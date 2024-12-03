import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Non-title row builder of the table
typedef MyoroTableRowBuilder<T> = MyoroTableRow Function(T item);

/// Base table.
final class MyoroTable<T> extends StatelessWidget {
  /// Data configuration to get the rows.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// Titles/titles of the table.
  final List<MyoroTableColumn> columns;

  /// Non-title row builder of the table.
  final MyoroTableRowBuilder<T> rowBuilder;

  MyoroTable({
    super.key,
    required this.dataConfiguration,
    required this.columns,
    required this.rowBuilder,
  }) : assert(
          columns.isNotEmpty,
          '[MyoroTable]: [columns] must not be empty.',
        );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    return ClipRRect(
      borderRadius: themeExtension.borderRadius,
      child: Container(
        decoration: BoxDecoration(
          color: themeExtension.backgroundColor,
          border: themeExtension.border,
          borderRadius: themeExtension.borderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _Titles(columns),
            Flexible(child: _RowsSection(columns, dataConfiguration, rowBuilder)),
          ],
        ),
      ),
    );
  }
}

final class _Titles extends StatelessWidget {
  final List<MyoroTableColumn> _columns;

  const _Titles(this._columns);

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
              children: _columns.map<Widget>(
                (MyoroTableColumn column) {
                  return Expanded(
                    child: Row(
                      children: [
                        Expanded(child: column.child),
                        if (column != _columns.last) SizedBox(width: themeExtension.columnSpacing),
                      ],
                    ),
                  );
                },
              ).toList(),
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

  const _RowsSection(
    this._columns,
    this._dataConfiguration,
    this._rowBuilder,
  );

  @override
  Widget build(BuildContext context) {
    return MyoroResolver<List<T>>(
      request: () async => await _dataConfiguration.items,
      builder: (List<T>? rows, MyoroRequestEnum status, String? errorMessage, _) {
        return switch (status) {
          MyoroRequestEnum.idle => const MyoroCircularLoader(),
          MyoroRequestEnum.loading => const MyoroCircularLoader(),
          MyoroRequestEnum.success => _Rows(_columns, _rowBuilder, rows!),
          MyoroRequestEnum.error => _ErrorMessage(errorMessage!),
        };
      },
    );
  }
}

final class _Rows<T> extends StatelessWidget {
  final List<MyoroTableColumn> _columns;
  final MyoroTableRowBuilder<T> _rowBuilder;
  final List<T> _rows;

  const _Rows(this._columns, this._rowBuilder, this._rows);

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
      children: rowsModelsMapped.map<Widget>(
        (MyoroTableRow row) {
          return _Row(row);
        },
      ).toList(),
    );
  }
}

final class _Row extends StatelessWidget {
  final MyoroTableRow _row;

  const _Row(this._row);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _row.cells.map<Widget>(
        (MyoroTableCell cell) {
          return Expanded(
            child: Row(
              children: [
                Expanded(child: cell.child),
                if (cell != _row.cells.last) SizedBox(width: context.resolveThemeExtension<MyoroTableThemeExtension>().columnSpacing),
              ],
            ),
          );
        },
      ).toList(),
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
