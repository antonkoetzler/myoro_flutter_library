part of '../myoro_table.dart';

/// A column in [_Columns].
final class _Column extends StatelessWidget {
  final MyoroTableColumn _column;
  final bool _isLastColumn;

  const _Column(Key? key, this._column, this._isLastColumn) : super(key: key);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();

    final Widget child = DefaultTextStyle(
      style: themeExtension.columnTextStyle,
      child: _column.tooltipMessage != null
          ? MyoroTooltip(
              configuration: MyoroTooltipConfiguration(text: _column.tooltipMessage!),
              child: _column.child,
            )
          : _column.child,
    );

    // Last [MyoroTableColumn] must always be expanded.
    if (_isLastColumn) {
      return Expanded(child: child);
    }

    return switch (_column.widthConfiguration.typeEnum) {
      MyoroTableColumnWidthConfigurationEnum.expanded => Expanded(child: child),
      MyoroTableColumnWidthConfigurationEnum.intrinsic => IntrinsicWidth(child: child),
      MyoroTableColumnWidthConfigurationEnum.fixed => SizedBox(
        width: _column.widthConfiguration.fixedWidth,
        child: child,
      ),
    };
  }
}
