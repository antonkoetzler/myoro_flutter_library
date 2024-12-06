import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Non-title row builder of the table
typedef MyoroTableRowBuilder<T> = MyoroTableRow Function(T item, bool hovered);

/// Base table.
final class MyoroTable<T> extends StatefulWidget {
  /// External table controller.
  final MyoroTableController? controller;

  /// Data configuration to get the rows.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// Constraints of the table.
  final BoxConstraints? constraints;

  /// If there will be selectable checkboxes.
  final bool checkboxesEnabled;

  /// Titles/titles of the table.
  final List<MyoroTableColumn> columns;

  /// Non-title row builder of the table.
  final MyoroTableRowBuilder<T> rowBuilder;

  MyoroTable({
    super.key,
    this.controller,
    required this.dataConfiguration,
    this.constraints,
    this.checkboxesEnabled = false,
    required this.columns,
    required this.rowBuilder,
  }) : assert(
          columns.isNotEmpty,
          '[MyoroTable]: [columns] must not be empty.',
        );

  @override
  State<MyoroTable<T>> createState() => _MyoroTableState<T>();
}

final class _MyoroTableState<T> extends State<MyoroTable<T>> {
  MyoroDataConfiguration<T> get _dataConfiguration => widget.dataConfiguration;
  BoxConstraints? get _constraints => widget.constraints;
  bool get _checkboxesEnabled => widget.checkboxesEnabled;
  List<MyoroTableColumn> get _columns => widget.columns;
  MyoroTableRowBuilder<T> get _rowBuilder => widget.rowBuilder;

  MyoroTableController? _localController;
  MyoroTableController get _controller {
    return widget.controller ?? (_localController ??= MyoroTableController());
  }

  /// [MyoroResolverController] of [_RowsSection] to refresh the controller.
  final _resolverController = MyoroResolverController();

  // Variables used to calculate widths of the [_TitleColumns] cells & the width of [_TitleColumns] itself.
  final _titleColumnsKey = GlobalKey();
  late final _columnWidgetKeys = List.generate(_columns.length, (_) => GlobalKey());
  final _columnWidgetWidthsNotifier = ValueNotifier<List<double>?>(null);

  /// Supplies [_controller] with [_resolverController].
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
    if (widget.controller == null) _controller.dispose();
    _columnWidgetWidthsNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return ClipRRect(
      borderRadius: themeExtension.borderRadius,
      child: Container(
        constraints: _constraints,
        decoration: BoxDecoration(
          color: themeExtension.backgroundColor,
          border: themeExtension.border,
          borderRadius: themeExtension.borderRadius,
        ),
        // [LayoutBuilder] to run the post frame callback everytime the window is resized.
        child: LayoutBuilder(
          builder: (_, __) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _columnWidgetWidthsNotifier.value = _columnWidgetKeys.map<double>(
                (GlobalKey key) {
                  return (key.currentContext!.findRenderObject() as RenderBox).size.width;
                },
              ).toList();
            });

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IntrinsicHeight(
                  child: _TitleColumns(
                    _titleColumnsKey,
                    _controller,
                    _columnWidgetKeys,
                    _columns,
                  ),
                ),
                Flexible(
                  child: _RowsSection(
                    _controller,
                    _columns,
                    _dataConfiguration,
                    _rowBuilder,
                    _columnWidgetWidthsNotifier,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

final class _TitleColumns extends StatelessWidget {
  final MyoroTableController _controller;
  final List<GlobalKey> _columnWidgetKeys;
  final List<MyoroTableColumn> _columns;

  const _TitleColumns(
    GlobalKey key,
    this._controller,
    this._columnWidgetKeys,
    this._columns,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Padding(
            padding: themeExtension.contentPadding,
            child: ValueListenableBuilder(
              valueListenable: _controller.ordenatedColumnsNotifier,
              builder: (_, Set<MyoroTableColumn> ordenatedColumns, __) {
                return Row(
                  children: [
                    for (int i = 0; i < _columns.length; i++)
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            switch (_columns[i].widthConfiguration.typeEnum) {
                              MyoroTableColumnWidthEnum.expanding => Expanded(
                                  key: _columnWidgetKeys[i],
                                  child: _TitleColumnsCell(_controller, _columns[i], _controller.columnOrdenated(_columns[i])),
                                ),
                              MyoroTableColumnWidthEnum.intrinsic => IntrinsicWidth(
                                  key: _columnWidgetKeys[i],
                                  child: _TitleColumnsCell(_controller, _columns[i], _controller.columnOrdenated(_columns[i])),
                                ),
                              MyoroTableColumnWidthEnum.fixed => SizedBox(
                                  key: _columnWidgetKeys[i],
                                  width: _columns[i].widthConfiguration.fixedWidth,
                                  child: _TitleColumnsCell(_controller, _columns[i], _controller.columnOrdenated(_columns[i])),
                                ),
                            },
                            if (_columns[i] != _columns.last)
                              MyoroBasicDivider(
                                Axis.vertical,
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      (themeExtension.columnSpacing / 2) + (context.resolveThemeExtension<MyoroBasicDividerThemeExtension>().shortValue / 2),
                                ),
                              ),
                          ],
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
        const MyoroBasicDivider(Axis.horizontal),
      ],
    );
  }
}

final class _TitleColumnsCell extends StatelessWidget {
  final MyoroTableController _controller;
  final MyoroTableColumn _column;
  final bool _ordenatedColumn;

  const _TitleColumnsCell(
    this._controller,
    this._column,
    this._ordenatedColumn,
  );

  void _ordenationCallback(bool value) {
    _controller.ordenateColumns([_column], enabled: value);
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return Padding(
      padding: themeExtension.titleColumnsCellPadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_column.ordenationCallback != null) _OrdenationButton(_ordenatedColumn, _ordenationCallback),
          SizedBox(width: themeExtension.titleColumnsCellSpacing),
          Flexible(child: _TitleColumnsCellText(_column.title, _column.titleTextAlign)),
        ],
      ),
    );
  }
}

final class _OrdenationButton extends StatelessWidget {
  final bool _value;
  final MyoroCheckboxOnChanged _callback;

  const _OrdenationButton(this._value, this._callback);

  @override
  Widget build(BuildContext context) {
    return MyoroCheckbox(
      initialValue: _value,
      onChanged: (bool value) => _callback.call(value),
    );
  }
}

final class _TitleColumnsCellText extends StatelessWidget {
  final String _text;
  final TextAlign? _textAlign;

  const _TitleColumnsCellText(this._text, this._textAlign);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return MyoroTooltip(
      text: _text,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        _text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: _textAlign ?? themeExtension.titleColumnsCellTextAlign,
        style: themeExtension.titleColumnsCellTextStyle,
      ),
    );
  }
}

final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableController _controller;
  final List<MyoroTableColumn> _columns;
  final MyoroDataConfiguration<T> _dataConfiguration;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final ValueNotifier<List<double>?> _columnWidgetWidthsNotifier;

  const _RowsSection(
    this._controller,
    this._columns,
    this._dataConfiguration,
    this._rowBuilder,
    this._columnWidgetWidthsNotifier,
  );

  @override
  Widget build(BuildContext context) {
    return MyoroResolver<List<T>>(
      controller: _controller.resolverController,
      request: () async => await _dataConfiguration.items,
      builder: (List<T>? rows, MyoroRequestEnum status, String? errorMessage, _) {
        return ValueListenableBuilder(
          valueListenable: _columnWidgetWidthsNotifier,
          builder: (_, List<double>? columnWidgetWidths, __) {
            if (columnWidgetWidths == null) return const SizedBox.shrink();

            return switch (status) {
              MyoroRequestEnum.idle => const _Loader(),
              MyoroRequestEnum.loading => const _Loader(),
              MyoroRequestEnum.success => _Rows(_columns, _rowBuilder, rows!, columnWidgetWidths),
              MyoroRequestEnum.error => _ErrorMessage(errorMessage!),
            };
          },
        );
      },
    );
  }
}

final class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) => const Center(child: MyoroCircularLoader());
}

final class _Rows<T> extends StatefulWidget {
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final List<T> _rows;
  final List<double> _widths;

  const _Rows(
    this._columns,
    this._rowBuilder,
    this._rows,
    this._widths,
  );

  @override
  State<_Rows<T>> createState() => _RowsState<T>();
}

final class _RowsState<T> extends State<_Rows<T>> {
  List<MyoroTableColumn> get _columns => widget._columns;
  MyoroTableRowBuilder<T> get _rowBuilder => widget._rowBuilder;
  List<T> get _rows => widget._rows;
  List<double> get _widths => widget._widths;

  final _hoveredRowNotifier = ValueNotifier<T?>(null);

  @override
  void dispose() {
    _hoveredRowNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_rows.isEmpty) return const _EmptyTableText();

    return ValueListenableBuilder(
      valueListenable: _hoveredRowNotifier,
      builder: (_, T? hoveredRow, __) {
        final rowsModelsMapped = _rows.map<MyoroTableRow>((T item) {
          return _rowBuilder.call(item, item == hoveredRow);
        }).toList();

        assert(
          rowsModelsMapped.first.cells.length == _columns.length,
          '[MyoroTable._Rows]: The amount of [MyoroTableCell]s in every row must be equal to [MyoroTable.columns.length].',
        );

        return MyoroScrollable(
          scrollableType: MyoroScrollableEnum.customScrollView,
          children: rowsModelsMapped.map<Widget>((MyoroTableRow row) {
            return _Row(
              _rows[rowsModelsMapped.indexOf(row)],
              row,
              _widths,
              _hoveredRowNotifier,
            );
          }).toList(),
        );
      },
    );
  }
}

final class _Row<T> extends StatelessWidget {
  final T _item;
  final MyoroTableRow _row;
  final List<double> _widths;
  final ValueNotifier<T?> _hoveredRowNotifier;

  const _Row(
    this._item,
    this._row,
    this._widths,
    this._hoveredRowNotifier,
  );

  void _toggleRowHover(bool hovered) {
    if (_row == _hoveredRowNotifier.value || !hovered) {
      _hoveredRowNotifier.value = null;
    } else {
      _hoveredRowNotifier.value = _item;
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return MyoroHoverButton(
      borderRadius: themeExtension.rowBorderRadius,
      onHover: _toggleRowHover,
      onPressed: () => _row.onPressed?.call(),
      builder: (bool hovered, Color contentColor, Color backgroundColor) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: themeExtension.contentPadding.horizontal / 2,
          ),
          child: Row(
            children: [
              for (int i = 0; i < _row.cells.length; i++)
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: _widths[i], child: _row.cells[i].child),
                      if (i != _row.cells.length - 1) SizedBox(width: themeExtension.columnSpacing),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

final class _EmptyTableText extends StatelessWidget {
  const _EmptyTableText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'No rows found.',
      style: context.resolveThemeExtension<MyoroTableThemeExtension>().emptyTableTextStyle,
    );
  }
}

final class _ErrorMessage extends StatelessWidget {
  final String _errorMessage;

  const _ErrorMessage(this._errorMessage);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final titleMessages = [
      'Unable to retrieve items!',
      'Oops! Failure to retrieve items!',
      'Uh oh... Something went wrong!',
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          titleMessages[faker.randomGenerator.integer(titleMessages.length)],
          style: themeExtension.errorMessageTitleTextStyle,
        ),
        Text(
          _errorMessage,
          style: themeExtension.errorMessageErrorTextStyle,
        ),
      ],
    );
  }
}
