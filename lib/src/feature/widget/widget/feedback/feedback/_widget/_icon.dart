part of '../widget/myoro_feedback.dart';

/// Icon of [MyoroFeedback].
final class _Icon extends StatelessWidget {
  const _Icon(this._iconConfiguration);

  final MyoroIconConfiguration _iconConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final iconSize = _iconConfiguration.size ?? style.iconSize ?? themeExtension.iconSize;
    return Icon(_iconConfiguration.icon, size: iconSize);
  }
}
