part of '../myoro_table.dart';

/// A column in [_Columns].
final class _Column extends StatelessWidget {
  final MyoroTableColumn _column;
  final bool _isLastColumn;

  const _Column(Key? key, this._column, this._isLastColumn) : super(key: key);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    final style = context.watch<MyoroTableStyle>();
    final columnTextStyle = style.columnTextStyle ?? themeExtension.columnTextStyle;

    var child = _column.tooltipMessage != null
        ? MyoroTooltip(text: _column.tooltipMessage!, child: _column.child)
        : _column.child;
    child = columnTextStyle != null ? DefaultTextStyle(style: columnTextStyle, child: child) : child;

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
