part of '../widget/myoro_feedback.dart';

/// Subtitle of [MyoroFeedback].
final class _Subtitle extends StatelessWidget {
  const _Subtitle(this._subtitleConfiguration);

  final MyoroTextConfiguration _subtitleConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final text = _subtitleConfiguration.text;
    final maxLines = _subtitleConfiguration.maxLines;
    final overflow = _subtitleConfiguration.overflow;
    final alignment = _subtitleConfiguration.alignment;
    final subtitleTextStyle = _subtitleConfiguration.style ?? style.subtitleTextStyle ?? themeExtension.subtitleTextStyle;

    return Text(text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: subtitleTextStyle);
  }
}
