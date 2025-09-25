part of '../myoro_card.dart';

/// UI of the [MyoroCard].
final class _Card extends StatelessWidget {
  const _Card(this._child);

  final Widget _child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();
    final style = context.read<MyoroCardStyle>();
    final constraints = style.constraints ?? themeExtension.constraints;
    final padding = style.padding ?? themeExtension.padding;
    final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
    final border = style.border ?? themeExtension.border;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius;
    return Container(
      constraints: constraints,
      padding: padding,
      decoration: BoxDecoration(color: backgroundColor, border: border, borderRadius: borderRadius),
      child: _child,
    );
  }
}
