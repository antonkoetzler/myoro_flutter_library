import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Non-title row builder of the table
typedef MyoroTableRowBuilder<T> = MyoroTableRow<T> Function(T item, bool hovered);

/// Base table.
///
/// TODO: Refactor this to put all the logic into a BLoC.
final class MyoroTable<T> extends StatefulWidget {
  /// External table controller.
  final MyoroTableController<T>? controller;

  /// Data configuration to get the rows.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// Constraints of the table.
  final BoxConstraints? constraints;

  /// If checkbox selection is enabled.
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

  MyoroTableController<T>? _localController;
  MyoroTableController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroTableController<T>());
  }

  /// [MyoroResolverController] of [_RowsSection] to refresh the controller.
  final _resolverController = MyoroResolverController();

  // Variables used to calculate widths of the [_TitleColumns] cells & the width of [_TitleColumns] itself.
  final _titleColumnsKey = GlobalKey();
  late final _columnWidgetKeys = List.generate(_columns.length + (_checkboxesEnabled ? 1 : 0), (_) => GlobalKey());
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

            // Needed to update the state of the checkboxes when changed.
            return ValueListenableBuilder(
              valueListenable: _controller.rowsCheckedNotifier,
              builder: (_, __, ___) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IntrinsicHeight(
                      child: _TitleColumns(
                        _titleColumnsKey,
                        _controller,
                        _columnWidgetKeys,
                        _columns,
                        _checkboxesEnabled,
                      ),
                    ),
                    Flexible(
                      child: _RowsSection(
                        _controller,
                        _columns,
                        _dataConfiguration,
                        _rowBuilder,
                        _columnWidgetWidthsNotifier,
                        _checkboxesEnabled,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

final class _TitleColumns<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  final List<GlobalKey> _columnWidgetKeys;
  final List<MyoroTableColumn> _columns;
  final bool _checkboxesEnabled;

  const _TitleColumns(
    GlobalKey key,
    this._controller,
    this._columnWidgetKeys,
    this._columns,
    this._checkboxesEnabled,
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
                    if (_checkboxesEnabled) ...[
                      MyoroCheckbox(
                        key: _columnWidgetKeys.first,
                        initialValue: _controller.allRowsChecked,
                        onChanged: (bool value) => _controller.toggleAllCheckboxes(enabled: value),
                      ),
                      const _TitleColumnsDivider(),
                    ],
                    ..._columns.map<Widget>(
                      (MyoroTableColumn column) {
                        final key = _columnWidgetKeys[_columns.indexOf(column) + (_checkboxesEnabled ? 1 : 0)];

                        return Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              switch (column.widthConfiguration.typeEnum) {
                                MyoroTableColumnWidthEnum.expanding => Expanded(
                                    key: key,
                                    child: _TitleColumnsCell(_controller, column),
                                  ),
                                MyoroTableColumnWidthEnum.intrinsic => IntrinsicWidth(
                                    key: key,
                                    child: _TitleColumnsCell(_controller, column),
                                  ),
                                MyoroTableColumnWidthEnum.fixed => SizedBox(
                                    key: key,
                                    width: column.widthConfiguration.fixedWidth,
                                    child: _TitleColumnsCell(_controller, column),
                                  ),
                              },
                              if (column != _columns.last) const _TitleColumnsDivider(),
                            ],
                          ),
                        );
                      },
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

final class _TitleColumnsDivider extends StatelessWidget {
  const _TitleColumnsDivider();

  @override
  Widget build(BuildContext context) {
    final columnSpacing = context.resolveThemeExtension<MyoroTableThemeExtension>().columnSpacing;
    final shortValue = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>().shortValue;

    return MyoroBasicDivider(
      Axis.vertical,
      padding: EdgeInsets.symmetric(
        horizontal: (columnSpacing - shortValue) / 2,
      ),
    );
  }
}

final class _TitleColumnsCell<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  final MyoroTableColumn _column;

  const _TitleColumnsCell(
    this._controller,
    this._column,
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
          if (_column.ordenationCallback != null) _OrdenationButton(_controller.columnOrdenated(_column), _ordenationCallback),
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
  final MyoroTableController<T> _controller;
  final List<MyoroTableColumn> _columns;
  final MyoroDataConfiguration<T> _dataConfiguration;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final ValueNotifier<List<double>?> _columnWidgetWidthsNotifier;
  final bool _checkboxesEnabled;

  const _RowsSection(
    this._controller,
    this._columns,
    this._dataConfiguration,
    this._rowBuilder,
    this._columnWidgetWidthsNotifier,
    this._checkboxesEnabled,
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

            if (status.isSuccess) {
              assert(
                rows!.length == rows.toSet().length,
                '[MyoroTable._Rows]: No identicle [MyoroTableRow]s are allowed.',
              );
              _controller.rows = rows!.toSet();
            }

            return switch (status) {
              MyoroRequestEnum.idle => const _Loader(),
              MyoroRequestEnum.loading => const _Loader(),
              MyoroRequestEnum.success => _Rows(_controller, _columns, _rowBuilder, columnWidgetWidths, _checkboxesEnabled),
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
  final MyoroTableController<T> _controller;
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final List<double> _widths;
  final bool _checkboxesEnabled;

  const _Rows(
    this._controller,
    this._columns,
    this._rowBuilder,
    this._widths,
    this._checkboxesEnabled,
  );

  @override
  State<_Rows<T>> createState() => _RowsState<T>();
}

final class _RowsState<T> extends State<_Rows<T>> {
  MyoroTableController<T> get _controller => widget._controller;
  List<MyoroTableColumn> get _columns => widget._columns;
  MyoroTableRowBuilder<T> get _rowBuilder => widget._rowBuilder;
  List<double> get _widths => widget._widths;
  bool get _checkboxesEnabled => widget._checkboxesEnabled;

  final _hoveredRowNotifier = ValueNotifier<T?>(null);

  @override
  void dispose() {
    _hoveredRowNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.rows!.isEmpty) return const _EmptyTableText();

    return ValueListenableBuilder(
      valueListenable: _hoveredRowNotifier,
      builder: (_, T? hoveredRow, __) {
        final rowsModelsMapped = _controller.rows!.map<MyoroTableRow<T>>((item) {
          return _rowBuilder.call(item, item == hoveredRow);
        }).toList();

        assert(
          rowsModelsMapped.first.cells.length == _columns.length,
          '[MyoroTable._Rows]: The amount of [MyoroTableCell]s in every row must be equal to [MyoroTable.columns.length].',
        );

        return MyoroScrollable(
          scrollableType: MyoroScrollableEnum.customScrollView,
          children: rowsModelsMapped.map<Widget>((MyoroTableRow<T> row) {
            return _Row(
              _controller,
              row,
              _widths,
              _hoveredRowNotifier,
              _checkboxesEnabled,
            );
          }).toList(),
        );
      },
    );
  }
}

final class _Row<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  final MyoroTableRow<T> _row;
  final List<double> _widths;
  final ValueNotifier<T?> _hoveredRowNotifier;
  final bool _checkboxesEnabled;

  const _Row(
    this._controller,
    this._row,
    this._widths,
    this._hoveredRowNotifier,
    this._checkboxesEnabled,
  );

  void _toggleRowHover(bool hovered) {
    if (_row == _hoveredRowNotifier.value || !hovered) {
      _hoveredRowNotifier.value = null;
    } else {
      _hoveredRowNotifier.value = _row.item;
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return MyoroHoverButton(
      borderRadius: themeExtension.rowBorderRadius,
      contentColor: themeExtension.rowBackgroundHoverColor,
      onHover: _toggleRowHover,
      onPressed: () => _row.onPressed?.call(),
      builder: (bool hovered, Color contentColor, Color backgroundColor) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: themeExtension.contentPadding.horizontal / 2,
          ),
          child: Row(
            children: [
              if (_checkboxesEnabled) ...[
                MyoroCheckbox(
                  initialValue: _controller.rowChecked(_row.item),
                  onChanged: (bool value) => _controller.toggleCheckboxes([_row.item], enabled: value),
                ),
                SizedBox(width: themeExtension.columnSpacing),
              ],
              ..._row.cells.map<Widget>(
                (MyoroTableCell cell) {
                  final width = _widths[_row.cells.indexOf(cell) + (_checkboxesEnabled ? 1 : 0)];

                  return Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: width, child: cell.child),
                        if (cell != _row.cells.last) SizedBox(width: themeExtension.columnSpacing),
                      ],
                    ),
                  );
                },
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
