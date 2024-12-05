import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Non-title row builder of the table
typedef MyoroTableRowBuilder<T> = MyoroTableRow Function(T item);

/// Base table.
final class MyoroTable<T> extends StatefulWidget {
  /// Data configuration to get the rows.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// Constraints of the table.
  final BoxConstraints? constraints;

  /// Titles/titles of the table.
  final List<MyoroTableColumn> columns;

  /// Non-title row builder of the table.
  final MyoroTableRowBuilder<T> rowBuilder;

  MyoroTable({
    super.key,
    required this.dataConfiguration,
    this.constraints,
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
  List<MyoroTableColumn> get _columns => widget.columns;
  MyoroTableRowBuilder<T> get _rowBuilder => widget.rowBuilder;

  // Variables used to calculate widths of the [_TitleColumns] cells & the width of [_TitleColumns] itself.
  final _titleColumnsKey = GlobalKey();
  late final _columnWidgetKeys = List.generate(_columns.length, (_) => GlobalKey());
  final _columnWidgetWidthsNotifier = ValueNotifier<List<double>?>(null);

  @override
  void dispose() {
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
                _TitleColumns(
                  _titleColumnsKey,
                  _columnWidgetKeys,
                  _columns,
                ),
                Flexible(
                  child: _RowsSection(
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
  final List<GlobalKey> _columnWidgetKeys;
  final List<MyoroTableColumn> _columns;

  const _TitleColumns(GlobalKey key, this._columnWidgetKeys, this._columns) : super(key: key);

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
              children: [
                for (int i = 0; i < _columns.length; i++)
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        switch (_columns[i].widthConfiguration.typeEnum) {
                          MyoroTableColumnWidthEnum.expanding => Expanded(
                              key: _columnWidgetKeys[i],
                              child: _columns[i].child,
                            ),
                          MyoroTableColumnWidthEnum.intrinsic => IntrinsicWidth(
                              key: _columnWidgetKeys[i],
                              child: _columns[i].child,
                            ),
                          MyoroTableColumnWidthEnum.fixed => SizedBox(
                              key: _columnWidgetKeys[i],
                              width: _columns[i].widthConfiguration.fixedWidth,
                              child: _columns[i].child,
                            ),
                        },
                        if (_columns[i] != _columns.last) ...[
                          SizedBox(width: context.resolveThemeExtension<MyoroTableThemeExtension>().columnSpacing),
                        ],
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        const MyoroBasicDivider(Axis.horizontal),
      ],
    );
  }
}

final class _RowsSection<T> extends StatelessWidget {
  final List<MyoroTableColumn> _columns;
  final MyoroDataConfiguration<T> _dataConfiguration;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final ValueNotifier<List<double>?> _columnWidgetWidthsNotifier;

  const _RowsSection(
    this._columns,
    this._dataConfiguration,
    this._rowBuilder,
    this._columnWidgetWidthsNotifier,
  );

  @override
  Widget build(BuildContext context) {
    return MyoroResolver<List<T>>(
      request: () async => await _dataConfiguration.items,
      builder: (List<T>? rows, MyoroRequestEnum status, String? errorMessage, _) {
        return ValueListenableBuilder(
          valueListenable: _columnWidgetWidthsNotifier,
          builder: (_, List<double>? columnWidgetWidths, __) {
            if (columnWidgetWidths == null) return const SizedBox.shrink();

            return switch (status) {
              MyoroRequestEnum.idle => const MyoroCircularLoader(),
              MyoroRequestEnum.loading => const MyoroCircularLoader(),
              MyoroRequestEnum.success => _Rows(_columns, _rowBuilder, rows!, columnWidgetWidths),
              MyoroRequestEnum.error => _ErrorMessage(errorMessage!),
            };
          },
        );
      },
    );
  }
}

final class _Rows<T> extends StatelessWidget {
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
  Widget build(BuildContext context) {
    if (_rows.isEmpty) return const _EmptyTableText();

    final rowsModelsMapped = _rows.map<MyoroTableRow>(_rowBuilder);

    assert(
      rowsModelsMapped.first.cells.length == _columns.length,
      '[MyoroTable._Rows]: The amount of [MyoroTableCell]s in every row must be equal to [MyoroTable.columns.length].',
    );

    return MyoroScrollable(
      scrollableType: MyoroScrollableEnum.customScrollView,
      padding: context.resolveThemeExtension<MyoroTableThemeExtension>().contentPadding,
      children: rowsModelsMapped.map<Widget>((MyoroTableRow row) => _Row(row, _widths)).toList(),
    );
  }
}

final class _Row extends StatelessWidget {
  final MyoroTableRow _row;
  final List<double> _widths;

  const _Row(this._row, this._widths);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < _row.cells.length; i++)
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: _widths[i], child: _row.cells[i].child),
                if (i != _row.cells.length - 1) SizedBox(width: context.resolveThemeExtension<MyoroTableThemeExtension>().columnSpacing),
              ],
            ),
          ),
      ],
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
