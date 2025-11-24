part of '../widget/myoro_feedback.dart';

/// Icon of [MyoroFeedback].
final class _Icon extends StatelessWidget {
  const _Icon(this._icon);

  final IconData _icon;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final iconSize = style.iconStyle?.size ?? themeExtension.iconStyle?.size;
    final iconColor = style.iconStyle?.color ?? themeExtension.iconStyle?.color;
    return Icon(_icon, size: iconSize, color: iconColor);
  }
}
