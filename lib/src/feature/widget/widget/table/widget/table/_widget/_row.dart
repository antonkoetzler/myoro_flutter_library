part of '../myoro_table.dart';

/// Row of a [MyoroTable].
final class _Row<T> extends StatelessWidget {
  final T _item;
  final List<double> _titleColumnKeyWidths;

  const _Row(this._item, this._titleColumnKeyWidths);

  @override
  Widget build(BuildContext context) {
    final tableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final rowTextStyle = tableThemeExtension.rowTextStyle;
    final columnSpacing = tableThemeExtension.columnSpacing;

    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();

    final viewModel = context.read<MyoroTableViewModel<T>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final rowBuilder = configuration.rowBuilder;

    final row = rowBuilder(_item);
    final onTapDown = row.onTapDown;
    final onTapUp = row.onTapUp;
    final cells = row.cells;

    assert(
      _titleColumnKeyWidths.length == cells.length,
      '[_Rows<$T>._itemBuilder]: Length of [columns] must be the same as the length of [cells].',
    );

    return DefaultTextStyle(
      style: rowTextStyle,
      child: MyoroButton(
        configuration: MyoroButtonConfiguration(
          onTapDown: (onTapDown != null) ? (_) => onTapDown(_item) : null,
          onTapUp: (onTapUp != null) ? (_) => onTapUp(_item) : null,
        ),
        themeExtension: buttonThemeExtension.copyWith(borderRadius: BorderRadius.zero),
        builder: (_, MyoroTapStatusEnum tapStatusEnum) {
          return Row(
            spacing: columnSpacing,
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
