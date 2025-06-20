part of '../myoro_table.dart';

/// Row of a [MyoroTable].
final class _Row<T> extends StatelessWidget {
  final T _item;
  final MyoroTableController<T> _controller;
  MyoroTableConfiguration<T> get _configuration => _controller.configuration;
  MyoroTableConfigurationRowBuilder<T> get _rowBuilder => _configuration.rowBuilder;
  List<double> get _titleColumnKeyWidths => _controller.titleColumnKeyWidths;

  const _Row(this._item, this._controller);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final MyoroTableRow<T> row = _rowBuilder(_item);
    final MyoroTableRowTapEvent<T>? onTapDown = row.onTapDown;
    final MyoroTableRowTapEvent<T>? onTapUp = row.onTapUp;
    final List<Widget> cells = row.cells;

    assert(
      _titleColumnKeyWidths.length == cells.length,
      '[_Rows<$T>._itemBuilder]: Length of [columns] must be the same as the length of [cells].',
    );

    return DefaultTextStyle(
      style: themeExtension.rowTextStyle,
      child: MyoroButton(
        configuration: MyoroButtonConfiguration(
          borderRadius: BorderRadius.zero,
          onTapDown: (onTapDown != null) ? (_) => onTapDown(_item) : null,
          onTapUp: (onTapUp != null) ? (_) => onTapUp(_item) : null,
        ),
        builder: (_, MyoroTapStatusEnum tapStatusEnum) {
          return Row(
            spacing: themeExtension.columnSpacing,
            children: [
              for (int i = 0; i < cells.length; i++) ...[
                (i == cells.length - 1)
                    ? Expanded(child: cells[i])
                    : SizedBox(width: _titleColumnKeyWidths[i], child: cells[i]),
              ],
            ],
          );
        },
      ),
    );
  }
}
