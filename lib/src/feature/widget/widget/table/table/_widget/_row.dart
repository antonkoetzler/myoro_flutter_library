part of '../myoro_table.dart';

/// Row of a [MyoroTable].
final class _Row<T> extends StatelessWidget {
  final T _item;
  final List<double> _titleColumnKeyWidths;

  const _Row(this._item, this._titleColumnKeyWidths);

  @override
  Widget build(BuildContext context) {
    final tableThemeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final style = context.watch<MyoroTableStyle>();
    final rowTextStyle = style.rowTextStyle ?? tableThemeExtension.rowTextStyle;
    final columnSpacing = style.columnSpacing ?? tableThemeExtension.columnSpacing ?? 0;

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

    final child = MyoroButton(
      configuration: MyoroButtonConfiguration(
        onTapDown: (onTapDown != null) ? (_) => onTapDown(_item) : null,
        onTapUp: (onTapUp != null) ? (_) => onTapUp(_item) : null,
      ),
      style: const MyoroButtonStyle().copyWith(
        backgroundIdleColor: context.colorScheme.primary,
        backgroundHoverColor: context.colorScheme.primary.withValues(alpha: 0.8),
        backgroundTapColor: context.colorScheme.primary.withValues(alpha: 0.6),
        borderRadius: BorderRadius.zero,
      ),
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
    );

    return rowTextStyle != null ? DefaultTextStyle(style: rowTextStyle, child: child) : child;
  }
}
