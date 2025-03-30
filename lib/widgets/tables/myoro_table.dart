import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

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

  /// Whether or not [MyoroTableColumn]s may be resized.
  final bool enableColumnResizing;

  /// Whether or not to enable checkbox functionalities.
  final bool enableCheckboxes;

  /// Whether or not to show [_Footer].
  final bool showPaginationControls;

  MyoroTable({
    super.key,
    this.controller,
    required this.columns,
    required this.rowBuilder,
    required this.dataConfiguration,
    this.enableColumnResizing = false,
    this.enableCheckboxes = false,
    this.showPaginationControls = false,
  }) : assert(columns.isNotEmpty, '[MyoroTable]: [columns] must not be empty.');

  static Finder finder<T>({
    MyoroTableController<T>? controller,
    bool controllerEnabled = false,
    List<MyoroTableColumn>? columns,
    bool columnsEnabled = false,
    MyoroTableRowBuilder<T>? rowBuilder,
    bool rowBuilderEnabled = false,
    MyoroDataConfiguration<T>? dataConfiguration,
    bool dataConfigurationEnabled = false,
    bool? enableColumnResizing,
    bool enableColumnResizingEnabled = false,
    bool? enableCheckboxes,
    bool enableCheckboxesEnabled = false,
    bool? showPaginationControls,
    bool showPaginationControlsEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroTable<T> &&
          (controllerEnabled ? w.controller == controller : true) &&
          (columnsEnabled ? w.columns == columns : true) &&
          (rowBuilderEnabled ? w.rowBuilder == rowBuilder : true) &&
          (dataConfigurationEnabled
              ? w.dataConfiguration == dataConfiguration
              : true) &&
          (enableColumnResizingEnabled
              ? w.enableColumnResizing == enableColumnResizing
              : true) &&
          (enableCheckboxesEnabled
              ? w.enableCheckboxes == enableCheckboxes
              : true) &&
          (showPaginationControlsEnabled
              ? w.showPaginationControls == showPaginationControls
              : true),
    );
  }

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  List<MyoroTableColumn> get _columns => widget.columns;
  MyoroTableRowBuilder<T> get _rowBuilder => widget.rowBuilder;
  MyoroDataConfiguration<T> get _dataConfiguration => widget.dataConfiguration;
  bool get _enableColumnResizing => widget.enableColumnResizing;
  bool get _enableCheckboxes => widget.enableCheckboxes;
  bool get _showPaginationControls => widget.showPaginationControls;

  MyoroTableController<T>? _localController;
  MyoroTableController<T> get _controller =>
      widget.controller ?? (_localController ??= MyoroTableController());

  /// [List] of [GlobalKey]s for every title column so we may get their
  /// widths and pass it to their respective column in [_RowsSection].
  late final List<GlobalKey> _columnKeys =
      _columns.map<GlobalKey>((_) => GlobalKey()).toList();

  /// [List] of the widths of every title column.
  final _columnWidthsNotifier = ValueNotifier<List<double>?>(null);

  /// This is just a ticker [ValueNotifier] in order to rebuild the [MyoroTable] when
  /// resized. There is no inherit logic associated with the [ValueNotifier]'s value.
  final _columnResizedNotifier = ValueNotifier<int>(0);

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
    _columnWidthsNotifier.dispose();
    _columnResizedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Provider<MyoroTableController<T>>(
      create: (_) => _controller,
      child: Column(
        spacing: themeExtension.tableFooterSpacing,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: themeExtension.decoration,
              // [MyoroLayoutBuilder] in order to run the post frame callback everytime the window is resized.
              child: MyoroLayoutBuilder(
                builder: (_, __) {
                  // [ValueListenableBuilder] in order to run the post frame callback everytime a [MyoroTableColumn] is resized.
                  return ValueListenableBuilder(
                    valueListenable: _columnResizedNotifier,
                    builder: (_, __, ___) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        _columnWidthsNotifier.value =
                            _columnKeys.map<double>((GlobalKey key) {
                              return (key.currentContext!.findRenderObject()
                                      as RenderBox)
                                  .size
                                  .width;
                            }).toList();
                      });

                      return Column(
                        children: [
                          _TitleRow<T>(
                            _columnKeys,
                            _columns,
                            _enableColumnResizing,
                            _columnResizedNotifier,
                          ),
                          Expanded(
                            child: _RowsSection(
                              _columns,
                              _rowBuilder,
                              _enableCheckboxes,
                              _columnWidthsNotifier,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
          if (_showPaginationControls) _Footer(_controller),
        ],
      ),
    );
  }
}

final class _TitleRow<T> extends StatelessWidget {
  final List<GlobalKey> _columnKeys;
  final List<MyoroTableColumn> _columns;
  final bool _enableColumnResizing;
  final ValueNotifier<int> _columnResizedNotifier;

  const _TitleRow(
    this._columnKeys,
    this._columns,
    this._enableColumnResizing,
    this._columnResizedNotifier,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();
    final isMultiColumned = _columns.length > 1;

    return SizedBox(
      height: themeExtension.titleRowHeight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Padding(
              padding:
                  isMultiColumned
                      ? themeExtension.contentPadding.copyWith(
                        top: 0,
                        bottom: 0,
                      )
                      : themeExtension.contentPadding,
              child: ValueListenableBuilder(
                valueListenable:
                    context
                        .read<MyoroTableController<T>>()
                        .ordenatedColumnNotifier,
                builder: (_, MyoroTableColumn? ordenatedColumn, __) {
                  return Row(
                    children:
                        _columns.map<Widget>((MyoroTableColumn column) {
                          final columnIndex = _columns.indexOf(column);
                          final isLastColumn =
                              columnIndex == _columns.length - 1;
                          final isOrdenatedColumn = column == ordenatedColumn;
                          final key = _columnKeys[columnIndex];
                          final columnWidget = _TitleColumn<T>(
                            key,
                            column,
                            isLastColumn,
                            isOrdenatedColumn,
                            isMultiColumned,
                            _enableColumnResizing,
                            _columnResizedNotifier,
                          );

                          // Always expand the last column.
                          if (isLastColumn) {
                            return Expanded(child: columnWidget);
                          }

                          return switch (column
                              .widthConfiguration
                              ?.columnWidthEnum) {
                            MyoroTableColumnWidthEnum.fixed => columnWidget,
                            MyoroTableColumnWidthEnum.expanded => Expanded(
                              child: columnWidget,
                            ),
                            _ => Flexible(child: columnWidget),
                          };
                        }).toList(),
                  );
                },
              ),
            ),
          ),
          const MyoroBasicDivider(
            configuration: MyoroBasicDividerConfiguration(
              direction: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

final class _TitleColumn<T> extends StatefulWidget {
  final GlobalKey _key;
  final MyoroTableColumn _column;
  final bool _isLastColumn;
  final bool _isOrdenatedColumn;
  final bool _isMultiColumned;
  final bool _enableColumnResizing;
  final ValueNotifier<int> _columnResizedNotifier;

  const _TitleColumn(
    this._key,
    this._column,
    this._isLastColumn,
    this._isOrdenatedColumn,
    this._isMultiColumned,
    this._enableColumnResizing,
    this._columnResizedNotifier,
  );

  @override
  State<_TitleColumn<T>> createState() => _TitleColumnState<T>();
}

final class _TitleColumnState<T> extends State<_TitleColumn<T>> {
  GlobalKey get _key => widget._key;
  MyoroTableColumn get _column => widget._column;
  bool get _isLastColumn => widget._isLastColumn;
  bool get _isOrdenatedColumn => widget._isOrdenatedColumn;
  bool get _isMultiColumned => widget._isMultiColumned;
  bool get _enableColumnResizing => widget._enableColumnResizing;
  ValueNotifier<int> get _columnResizedNotifier =>
      widget._columnResizedNotifier;

  /// [ValueNotifier] to control the width applied from resizing the [_TitleColumn].
  final _widthAppliedNotifier = ValueNotifier<double>(0);

  void _dragCallback(DragUpdateDetails details) {
    _widthAppliedNotifier.value =
        _widthAppliedNotifier.value + details.delta.dx;
    _columnResizedNotifier.value =
        _columnResizedNotifier.value + 1; // Poll the [ValueNotifier].
  }

  @override
  void dispose() {
    _widthAppliedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();
    const dividerConfiguration = MyoroBasicDividerConfiguration(
      direction: Axis.vertical,
    );

    final controller = context.read<MyoroTableController<T>>();
    final showDivider = _isMultiColumned && !_isLastColumn;

    return Padding(
      padding: EdgeInsets.only(
        right: _isLastColumn ? 0 : themeExtension.columnSpacing,
      ),
      child: MyoroLayoutBuilder(
        builder: (_, BoxConstraints constraints) {
          return ValueListenableBuilder(
            valueListenable: _widthAppliedNotifier,
            builder: (_, double widthApplied, __) {
              return Container(
                key: _key,
                width:
                    (_column.widthConfiguration?.fixedWidth ??
                        constraints.maxWidth) +
                    widthApplied,
                constraints: BoxConstraints(
                  minWidth: themeExtension.titleRowCellMinWidth,
                ),
                child: MyoroTooltip(
                  text: _column.title,
                  child: Row(
                    spacing: themeExtension.titleColumnSpacing,
                    children: [
                      if (_column.ordenationCallback != null)
                        MyoroCheckbox(
                          initialValue: _isOrdenatedColumn,
                          onChanged:
                              (bool value) => controller.setOrdenatedColumn(
                                value ? _column : null,
                              ),
                        ),
                      Expanded(
                        child: Text(
                          _column.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              _column.titleTextStyle ??
                              themeExtension.titleTextStyle,
                        ),
                      ),
                      if (showDivider && !_enableColumnResizing)
                        const MyoroBasicDivider(
                          configuration: dividerConfiguration,
                        )
                      else if (showDivider && _enableColumnResizing)
                        MyoroResizeDivider(
                          configuration: dividerConfiguration,
                          dragCallback: _dragCallback,
                        ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

final class _RowsSection<T> extends StatelessWidget {
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final bool _enableCheckboxes;
  final ValueNotifier<List<double>?> _columnWidthsNotifier;

  const _RowsSection(
    this._columns,
    this._rowBuilder,
    this._enableCheckboxes,
    this._columnWidthsNotifier,
  );

  @override
  Widget build(BuildContext context) {
    final controller = context.read<MyoroTableController<T>>();

    return MyoroResolver<List<T>>(
      controller: controller.resolverController,
      request: () async => await controller.dataConfiguration.items,
      builder: (
        List<T>? items,
        MyoroRequestEnum status,
        String? errorMessage,
        MyoroResolverController resolverController,
      ) {
        return switch (status) {
          MyoroRequestEnum.idle => const _Loading(),
          MyoroRequestEnum.loading => const _Loading(),
          MyoroRequestEnum.success => _Rows(
            items!,
            _columns,
            _rowBuilder,
            _enableCheckboxes,
            _columnWidthsNotifier,
          ),
          MyoroRequestEnum.error => _ErrorMessage(errorMessage!),
        };
      },
    );
  }
}

final class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) =>
      const Center(child: MyoroCircularLoader());
}

final class _Rows<T> extends StatelessWidget {
  final List<T> _items;
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final bool _enableCheckboxes;
  final ValueNotifier<List<double>?> _columnWidthsNotifier;

  const _Rows(
    this._items,
    this._columns,
    this._rowBuilder,
    this._enableCheckboxes,
    this._columnWidthsNotifier,
  );

  @override
  Widget build(BuildContext context) {
    // Case where there are no items to be displayed.
    if (_items.isEmpty) return const _EmptyMessage();

    // Building the rows.
    final builtRows = _items.map<MyoroTableRow>(_rowBuilder).toList();

    // Asserting that the # of cells is equal to the # of title columns.
    assert(
      builtRows.first.cells.length == _columns.length,
      '[MyoroTable._Rows]: Number of cells in each [MyoroTableRow] must be equal to the number of title columns.',
    );

    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    return ValueListenableBuilder(
      valueListenable:
          context.read<MyoroTableController<T>>().rowsSelectedNotifier,
      builder: (_, Set<MyoroTableRow> selectedRows, __) {
        return ValueListenableBuilder(
          valueListenable: _columnWidthsNotifier,
          builder: (_, List<double>? columnWidths, __) {
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate((_, int index) {
                    final row = builtRows[index];

                    return MyoroHoverButton(
                      onPressed: row.onPressed != null ? row.onPressed! : () {},
                      configuration: themeExtension.rowsButtonConfiguration,
                      builder: (bool hovered, _, __) {
                        return Padding(
                          padding: themeExtension.contentPadding,
                          // This [SingleChildScrollView] prevents overflows when the table is
                          // resized and [_columnWidthsNotifier] hasen't been updated yet.
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for (int i = 0; i < row.cells.length; i++)
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right:
                                          i != _columns.length - 1
                                              ? themeExtension.columnSpacing
                                              : 0,
                                    ),
                                    child: SizedBox(
                                      width: columnWidths?[i],
                                      child: Row(
                                        spacing: themeExtension.rowsCellSpacing,
                                        children: [
                                          if (i == 0 && _enableCheckboxes)
                                            _RowCheckbox<T>(
                                              row,
                                              selectedRows.contains(row),
                                            ),
                                          Expanded(child: row.cells[i].child),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

final class _RowCheckbox<T> extends StatelessWidget {
  final MyoroTableRow _row;
  final bool _initialValue;

  const _RowCheckbox(this._row, this._initialValue);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<MyoroTableController<T>>();

    return MyoroCheckbox(
      initialValue: _initialValue,
      onChanged:
          (bool value) =>
              value
                  ? controller.selectRows([_row])
                  : controller.deselectRows([_row]),
    );
  }
}

final class _EmptyMessage extends StatelessWidget {
  const _EmptyMessage();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.messageSpacing,
      children: [
        Text('No items found!', style: themeExtension.emptyMessageTextStyle),
        const _TryAgainButton(),
      ],
    );
  }
}

final class _ErrorMessage extends StatelessWidget {
  final String _errorMessage;

  const _ErrorMessage(this._errorMessage);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTableThemeExtension>();
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
                errorMessages[faker.randomGenerator.integer(
                  errorMessages.length,
                )],
                style: themeExtension.errorMessageHeaderTextStyle,
              ),
              Text(
                _errorMessage,
                style: themeExtension.errorMessageErrorTextStyle,
              ),
            ],
          ),
          const _TryAgainButton(),
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
        _ItemsPerPageDropdown(_controller),
        Flexible(child: _PageControls(_controller)),
      ],
    );
  }
}

final class _ItemsPerPageDropdown<T> extends StatefulWidget {
  final MyoroTableController<T> _tableController;

  const _ItemsPerPageDropdown(this._tableController);

  @override
  State<_ItemsPerPageDropdown<T>> createState() =>
      _ItemsPerPageDropdownState<T>();
}

final class _ItemsPerPageDropdownState<T>
    extends State<_ItemsPerPageDropdown<T>> {
  MyoroTableController<T> get _tableController => widget._tableController;

  final _dropdownController = MyoroSingularDropdownController<int>();

  String _formatInt(int itemsPerPage) => itemsPerPage.toString();
  MyoroMenuItem _itemBuilder(int itemsPerPage) =>
      MyoroMenuItem(text: _formatInt(itemsPerPage));

  void _onChanged(int? itemsPerPage) =>
      _tableController.setItemsPerPage(itemsPerPage!);

  @override
  Widget build(BuildContext context) {
    final dataConfiguration = MyoroDataConfiguration<int>(
      staticItems: kMyoroDataConfigurationItemsPerPageOptions,
    );

    return SizedBox(
      width: 55,
      child: MyoroSingularDropdown<int>(
        configuration: MyoroSingularDropdownConfiguration(
          dataConfiguration: dataConfiguration,
          menuItemBuilder: _itemBuilder,
          selectedItemBuilder: _formatInt,
          allowItemClearing: false,
          initialSelectedItem: _tableController.dataConfiguration.itemsPerPage,
          onChanged: _onChanged,
          controller: _dropdownController,
        ),
      ),
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
      spacing:
          context
              .resolveThemeExtension<MyoroTableThemeExtension>()
              .footerSpacing,
      children: [
        if (currentPage > 1) ...[
          _Button(
            text: 'First page',
            onPressed: () => _controller.changePage(1),
          ),
          _Button(
            icon: Icons.keyboard_arrow_left,
            onPressed: () => _controller.changePage(currentPage - 1),
          ),
        ],
        SizedBox(
          width: 20,
          child: Text(
            currentPage.toString(),
            style: context
                .resolveThemeExtension<MyoroIconTextHoverButtonThemeExtension>()
                .textStyle
                .copyWith(fontSize: 20),
          ),
        ),
        if (currentPage < totalPages) ...[
          _Button(
            icon: Icons.keyboard_arrow_right,
            onPressed: () => _controller.changePage(currentPage + 1),
          ),
          _Button(
            text: 'Last page',
            onPressed: () => _controller.changePage(totalPages),
          ),
        ],
      ],
    );
  }
}

final class _Button extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final VoidCallback? onPressed;

  const _Button({this.icon, this.text, this.onPressed})
    : assert(
        (icon != null) ^ (text != null),
        '[_PaginationButton]: [icon] (x)or [text] must be provided]',
      );

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        icon: icon,
        text: text ?? '',
        configuration:
            context
                .resolveThemeExtension<MyoroTableThemeExtension>()
                .buttonConfiguration,
        onPressed: onPressed,
      ),
    );
  }
}

final class _TryAgainButton<T> extends StatelessWidget {
  const _TryAgainButton();

  @override
  Widget build(BuildContext context) {
    return _Button(
      text: 'Click to try again',
      onPressed: () => context.read<MyoroTableController<T>>().refresh(),
    );
  }
}
