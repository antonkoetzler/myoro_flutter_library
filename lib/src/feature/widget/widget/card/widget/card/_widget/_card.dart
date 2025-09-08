part of '../myoro_card.dart';

/// UI of the [MyoroCard].
final class _Card extends StatelessWidget {
  const _Card(this._child);

  final Widget _child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();
    final constraints = themeExtension.constraints;
    final padding = themeExtension.padding;
    final backgroundColor = themeExtension.backgroundColor;
    final border = themeExtension.border;
    final borderRadius = themeExtension.borderRadius;
    return Container(
      constraints: constraints,
      padding: padding,
      decoration: BoxDecoration(color: backgroundColor, border: border, borderRadius: borderRadius),
      child: _child,
    );
  }
}
