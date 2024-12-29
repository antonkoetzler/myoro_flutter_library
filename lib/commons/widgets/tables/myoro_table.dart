import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the (non-title) rows.
typedef MyoroTableRowBuilder<T> = MyoroTableRow Function(T item);

/// Table [Widget] of the library.
final class MyoroTable<T> extends StatefulWidget {
  /// Controller of the table.
  final MyoroTableController<T>? controller;

  /// Column & title initialization of the table.
  final List<MyoroTableColumn> columns;

  /// Builder of the (non-title) rows.
  final MyoroTableRowBuilder<T> rowBuilder;

  /// Data of the table.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// Whether or not to show [_Footer].
  final bool showPaginationControls;

  MyoroTable({
    super.key,
    this.controller,
    required this.columns,
    required this.rowBuilder,
    required this.dataConfiguration,
    this.showPaginationControls = false,
  }) : assert(
          columns.isNotEmpty,
          '[MyoroTable]: [columns] must not be empty.',
        );

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  List<MyoroTableColumn> get _columns => widget.columns;
  MyoroTableRowBuilder<T> get _rowBuilder => widget.rowBuilder;
  MyoroDataConfiguration<T> get _dataConfiguration => widget.dataConfiguration;
  bool get _showPaginationControls => widget.showPaginationControls;

  MyoroTableController<T>? _localController;
  MyoroTableController<T> get _controller => widget.controller ?? (_localController ??= MyoroTableController());

  /// [List] of [GlobalKey]s for every title column so we may get their
  /// widths and pass it to their respective column in [_Contents].
  late final List<GlobalKey> _titleColumnKeys = _columns.map<GlobalKey>((_) => GlobalKey()).toList();

  /// [List] of the widths of every title column.
  final _titleColumnWidthsNotifier = ValueNotifier<List<double>?>(null);

  /// [MyoroResolverController] to call [MyoroResolverController.refresh] within [_controller].
  final _resolverController = MyoroResolverController();

  /// Supplys [_controller] with it's required members.
  void _supplyController() {
    _controller.dataConfiguration = _dataConfiguration;
    _controller.resolverController = _resolverController;
  }

  @override
  void initState() {
    super.initState();
    _supplyController();
  }

  @override
  void didUpdateWidget(covariant MyoroTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _supplyController();
  }

  @override
  void dispose() {
    _titleColumnWidthsNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Column(
      spacing: themeExtension.tableFooterSpacing,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            decoration: themeExtension.decoration,
            // [MyoroLayoutBuilder] in order to run the post frame callback everytime the window is resized.
            child: MyoroLayoutBuilder(
              builder: (_, __) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  _titleColumnWidthsNotifier.value = _titleColumnKeys.map<double>(
                    (GlobalKey key) {
                      return (key.currentContext!.findRenderObject() as RenderBox).size.width;
                    },
                  ).toList();
                });

                return Column(
                  children: [
                    _TitleRow(_controller, _titleColumnKeys, _columns),
                    Expanded(child: _Contents(_controller, _dataConfiguration, _columns, _rowBuilder, _titleColumnWidthsNotifier)),
                  ],
                );
              },
            ),
          ),
        ),
        if (_showPaginationControls) _Footer(_controller),
      ],
    );
  }
}

final class _TitleRow<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  final List<GlobalKey> _titleColumnKeys;
  final List<MyoroTableColumn> _columns;

  const _TitleRow(this._controller, this._titleColumnKeys, this._columns);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Padding(
            padding: themeExtension.contentPadding,
            child: Row(
              children: _columns.map<Widget>((MyoroTableColumn column) {
                final columnIndex = _columns.indexOf(column);
                final isLastColumn = columnIndex == _columns.length - 1;
                final key = _titleColumnKeys[columnIndex];

                if (isLastColumn) return Expanded(child: _TitleColumn(_controller, key, column, isLastColumn));

                return switch (column.widthConfiguration?.columnWidthEnum) {
                  MyoroTableColumnWidthEnum.fixed => _TitleColumn(_controller, key, column, isLastColumn),
                  MyoroTableColumnWidthEnum.expanded => Expanded(child: _TitleColumn(_controller, key, column, isLastColumn)),
                  _ => Flexible(child: _TitleColumn(_controller, key, column, isLastColumn)),
                };
              }).toList(),
            ),
          ),
        ),
        const MyoroBasicDivider(
          configuration: MyoroBasicDividerConfiguration(
            direction: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}

final class _TitleColumn<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  final GlobalKey _key;
  final MyoroTableColumn _column;
  final bool _isLastColumn;

  const _TitleColumn(
    this._controller,
    this._key,
    this._column,
    this._isLastColumn,
  );

  void _ordenationCallback(bool value) {
    _controller
      ..clearFilters()
      ..addFilters(_column.ordenationCallback!.call());
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(
      padding: EdgeInsets.only(right: _isLastColumn ? 0 : themeExtension.columnSpacing),
      child: SizedBox(
        key: _key,
        width: _column.widthConfiguration?.fixedWidth,
        child: MyoroTooltip(
          text: _column.title,
          child: Row(
            spacing: themeExtension.titleColumnSpacing,
            children: [
              if (_column.ordenationCallback != null) MyoroCheckbox(onChanged: _ordenationCallback),
              Expanded(
                child: Text(
                  _column.title,
                  style: _column.titleTextStyle ?? themeExtension.titleTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class _Contents<T> extends StatelessWidget {
  final MyoroTableController _controller;
  final MyoroDataConfiguration<T> _dataConfiguration;
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final ValueNotifier<List<double>?> _titleColumnWidthsNotifier;

  const _Contents(
    this._controller,
    this._dataConfiguration,
    this._columns,
    this._rowBuilder,
    this._titleColumnWidthsNotifier,
  );

  @override
  Widget build(BuildContext context) {
    return MyoroResolver<List<T>>(
      controller: _controller.resolverController,
      request: () async => await _dataConfiguration.items,
      builder: (
        List<T>? items,
        MyoroRequestEnum status,
        String? errorMessage,
        MyoroResolverController resolverController,
      ) {
        return switch (status) {
          MyoroRequestEnum.idle => const _Loading(),
          MyoroRequestEnum.loading => const _Loading(),
          MyoroRequestEnum.success => _Rows(_controller, items!, _columns, _rowBuilder, _titleColumnWidthsNotifier),
          MyoroRequestEnum.error => _ErrorMessage(_controller, errorMessage!),
        };
      },
    );
  }
}

final class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) => const Center(child: MyoroCircularLoader());
}

final class _Rows<T> extends StatelessWidget {
  final MyoroTableController _controller;
  final List<T> _items;
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final ValueNotifier<List<double>?> _titleColumnWidthsNotifier;

  const _Rows(
    this._controller,
    this._items,
    this._columns,
    this._rowBuilder,
    this._titleColumnWidthsNotifier,
  );

  @override
  Widget build(BuildContext context) {
    // Case where there are no items to be displayed.
    if (_items.isEmpty) _EmptyMessage(_controller);

    // Building the rows.
    final builtRows = _items.map<MyoroTableRow>(_rowBuilder).toList();

    // Asserting that the # of cells is equal to the # of title columns.
    assert(
      builtRows.first.cells.length == _columns.length,
      '[MyoroTable._Rows]: Number of cells in each [MyoroTableRow] must be equal to the number of title columns.',
    );

    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final buttonConfiguration = MyoroHoverButtonConfiguration(
      onPrimaryColor: context.resolveThemeExtension<MyoroHoverButtonThemeExtension>().onPrimaryColor.withOpacity(0.3),
      borderRadius: BorderRadius.zero,
      primaryColor: MyoroColorTheme.transparent,
    );

    return ValueListenableBuilder(
      valueListenable: _titleColumnWidthsNotifier,
      builder: (_, List<double>? titleColumnWidths, __) {
        return MyoroScrollable(
          scrollableType: MyoroScrollableEnum.customScrollView,
          children: builtRows.map<Widget>((MyoroTableRow row) {
            return MyoroHoverButton(
              onPressed: row.onPressed != null ? row.onPressed! : () {},
              configuration: buttonConfiguration,
              builder: (bool hovered, _, __) {
                return Padding(
                  padding: themeExtension.contentPadding,
                  child: Row(
                    children: [
                      for (int i = 0; i < row.cells.length; i++)
                        Padding(
                          padding: EdgeInsets.only(right: i != _columns.length - 1 ? themeExtension.columnSpacing : 0),
                          child: SizedBox(
                            width: titleColumnWidths?[i],
                            child: row.cells[i].child,
                          ),
                        ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        );
      },
    );
  }
}

final class _EmptyMessage extends StatelessWidget {
  final MyoroTableController _controller;

  const _EmptyMessage(this._controller);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.messageSpacing,
      children: [
        Text(
          'No items found!',
          style: themeExtension.emptyMessageTextStyle,
        ),
        _TryAgainButton(_controller),
      ],
    );
  }
}

final class _ErrorMessage extends StatelessWidget {
  final MyoroTableController _controller;
  final String _errorMessage;

  const _ErrorMessage(
    this._controller,
    this._errorMessage,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final errorMessages = [
      'Oops! Error retrieving items...',
      'Uh-oh! Failed to get items...',
      'There was a problem getting the items... Please try again!',
    ];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.messageSpacing,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                errorMessages[faker.randomGenerator.integer(errorMessages.length)],
                style: themeExtension.errorMessageHeaderTextStyle,
              ),
              Text(
                _errorMessage,
                style: themeExtension.errorMessageErrorTextStyle,
              ),
            ],
          ),
          _TryAgainButton(_controller),
        ],
      ),
    );
  }
}

final class _Footer<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;

  const _Footer(this._controller);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: _ItemsPerPageDropdown(_controller)),
        Flexible(child: _PageControls(_controller)),
      ],
    );
  }
}

final class _ItemsPerPageDropdown<T> extends StatefulWidget {
  final MyoroTableController<T> _tableController;

  const _ItemsPerPageDropdown(this._tableController);

  @override
  State<_ItemsPerPageDropdown<T>> createState() => _ItemsPerPageDropdownState<T>();
}

final class _ItemsPerPageDropdownState<T> extends State<_ItemsPerPageDropdown<T>> {
  MyoroTableController<T> get _tableController => widget._tableController;

  late final _dropdownController = MyoroDropdownController<int>([_tableController.dataConfiguration.itemsPerPage]);

  String _formatInt(int itemsPerPage) => itemsPerPage.toString();
  MyoroMenuItem _itemBuilder(int itemsPerPage) => MyoroMenuItem(text: _formatInt(itemsPerPage));

  void _onChangedItems(List<int> itemsPerPage) => _tableController.setItemsPerPage(itemsPerPage.first);

  @override
  void dispose() {
    _dropdownController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataConfiguration = MyoroDataConfiguration<int>(staticItems: kMyoroDataConfigurationItemsPerPageOptions);

    return MyoroDropdown<int>(
      controller: _dropdownController,
      dataConfiguration: dataConfiguration,
      itemBuilder: _itemBuilder,
      itemLabelBuilder: _formatInt,
      onChangedItems: _onChangedItems,
      showClearTextButton: false,
    );
  }
}

final class _PageControls<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;

  const _PageControls(this._controller);

  @override
  Widget build(BuildContext context) {
    final currentPage = _controller.dataConfiguration.currentPage;
    final totalPages = _controller.dataConfiguration.totalPages;

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: context.resolveThemeExtension<MyoroTableThemeExtension>().footerSpacing,
      children: [
        if (currentPage > 1) ...[
          _Button(text: 'First page', onPressed: () => _controller.changePage(1)),
          _Button(icon: Icons.keyboard_arrow_left, onPressed: () => _controller.changePage(currentPage - 1)),
        ],
        SizedBox(
          width: 20,
          child: Text(
            currentPage.toString(),
            style: context.resolveThemeExtension<MyoroIconTextHoverButtonThemeExtension>().textStyle.copyWith(fontSize: 20),
          ),
        ),
        if (currentPage < totalPages) ...[
          _Button(icon: Icons.keyboard_arrow_right, onPressed: () => _controller.changePage(currentPage + 1)),
          _Button(text: 'Last page', onPressed: () => _controller.changePage(totalPages)),
        ],
      ],
    );
  }
}

final class _Button extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final VoidCallback? onPressed;

  const _Button({
    this.icon,
    this.text,
    this.onPressed,
  }) : assert(
          (icon != null) ^ (text != null),
          '[_PaginationButton]: [icon] (x)or [text] must be provided]',
        );

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        icon: icon,
        text: text,
        configuration: context.resolveThemeExtension<MyoroTableThemeExtension>().buttonConfiguration,
        onPressed: onPressed,
      ),
    );
  }
}

final class _TryAgainButton<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;

  const _TryAgainButton(this._controller);

  @override
  Widget build(BuildContext context) {
    return _Button(
      text: 'Click to try again',
      onPressed: () => _controller.refresh(),
    );
  }
}
