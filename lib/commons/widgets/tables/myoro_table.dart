import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the (non-title) rows.
typedef MyoroTableRowBuilder<T> = MyoroTableRow Function(T item);

/// Table [Widget] of the library.
final class MyoroTable<T> extends StatefulWidget {
  /// Controller of the table.
  final MyoroTableController? controller;

  /// Column & title initialization of the table.
  final List<MyoroTableColumn> columns;

  /// Builder of the (non-title) rows.
  final MyoroTableRowBuilder<T> rowBuilder;

  /// Data of the table.
  final MyoroDataConfiguration<T> dataConfiguration;

  MyoroTable({
    super.key,
    this.controller,
    required this.columns,
    required this.rowBuilder,
    required this.dataConfiguration,
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

  MyoroTableController? _localController;
  MyoroTableController get _controller => widget.controller ?? (_localController ??= MyoroTableController());

  /// [List] of [GlobalKey]s for every title column so we may get their
  /// widths and pass it to their respective column in [_DataRows].
  late final List<GlobalKey> _titleColumnKeys = _columns.map<GlobalKey>((_) => GlobalKey()).toList();

  /// [List] of the widths of every title column.
  final _titleColumnWidthsNotifier = ValueNotifier<List<double>?>(null);

  /// [MyoroResolverController] to call [MyoroResolverController.refresh] within [_controller].
  final _resolverController = MyoroResolverController();

  /// Supplys [_controller] with it's required members.
  void _supplyController() => _controller.resolverController = _resolverController;

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _titleColumnWidthsNotifier.value = _titleColumnKeys.map<double>(
        (GlobalKey key) {
          return (key.currentContext!.findRenderObject() as RenderBox).size.width;
        },
      ).toList();
    });

    return Column(
      children: [
        _TitleRow(_titleColumnKeys, _columns),
        Expanded(child: _DataRows(_controller, _dataConfiguration, _columns, _rowBuilder, _titleColumnWidthsNotifier)),
      ],
    );
  }
}

final class _TitleRow extends StatelessWidget {
  final List<GlobalKey> _titleColumnKeys;
  final List<MyoroTableColumn> _columns;

  const _TitleRow(this._titleColumnKeys, this._columns);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _columns.map<Widget>((MyoroTableColumn column) {
        final key = _titleColumnKeys[_columns.indexOf(column)];

        return switch (column.widthConfiguration?.columnWidthEnum) {
          MyoroTableColumnWidthEnum.fixed => _TitleColumn(key: key, column),
          MyoroTableColumnWidthEnum.expanded => Expanded(child: _TitleColumn(key: key, column)),
          _ => Flexible(child: _TitleColumn(key: key, column)),
        };
      }).toList(),
    );
  }
}

final class _TitleColumn extends StatelessWidget {
  final MyoroTableColumn _column;

  const _TitleColumn(this._column, {super.key});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return SizedBox(
      width: _column.widthConfiguration?.fixedWidth,
      child: Text(
        _column.title,
        style: _column.titleTextStyle ?? themeExtension.titleTextStyle,
      ),
    );
  }
}

final class _DataRows<T> extends StatelessWidget {
  final MyoroTableController _controller;
  final MyoroDataConfiguration<T> _dataConfiguration;
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final ValueNotifier<List<double>?> _titleColumnWidthsNotifier;

  const _DataRows(
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
          MyoroRequestEnum.success => _BuiltDataRows(_controller, items!, _columns, _rowBuilder, _titleColumnWidthsNotifier),
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

final class _BuiltDataRows<T> extends StatelessWidget {
  final MyoroTableController _controller;
  final List<T> _items;
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final ValueNotifier<List<double>?> _titleColumnWidthsNotifier;

  const _BuiltDataRows(
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
      '[MyoroTable._BuiltDataRows]: Number of cells in each [MyoroTableRow] must be equal to the number of title columns.',
    );

    return const Text('Start');
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

final class _TryAgainButton extends StatelessWidget {
  final MyoroTableController _controller;

  const _TryAgainButton(this._controller);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        text: 'Click here to try again',
        configuration: context.resolveThemeExtension<MyoroTableThemeExtension>().tryAgainButtonConfiguration,
        onPressed: _controller.refresh,
      ),
    );
  }
}
