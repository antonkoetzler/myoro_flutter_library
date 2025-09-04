part of '../myoro_card.dart';

/// UI of the [MyoroCard].
final class _Card extends StatelessWidget {
  const _Card(this._style, this._child);

  final MyoroCardStyle _style;
  final Widget _child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    final constraints = _style.constraints;

    final padding = _style.padding ?? themeExtension.padding;
    final backgroundColor = _style.backgroundColor ?? themeExtension.backgroundColor;
    final border = _style.border ?? themeExtension.border;
    final borderRadius = _style.borderRadius ?? themeExtension.borderRadius;

    return Container(
      constraints: constraints,
      padding: padding,
      decoration: BoxDecoration(color: backgroundColor, border: border, borderRadius: borderRadius),
      child: _child,
    );
  }
}
