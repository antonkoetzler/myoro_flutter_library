part of '../myoro_feedback.dart';

/// Subtitle of [MyoroFeedback].
final class _Subtitle extends StatelessWidget {
  const _Subtitle();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final configuration = context.read<MyoroFeedbackConfiguration>();
    final subtitleConfiguration = configuration.subtitleConfiguration;
    final text = subtitleConfiguration!.text;
    final maxLines = subtitleConfiguration.maxLines;
    final overflow = subtitleConfiguration.overflow;
    final alignment = subtitleConfiguration.alignment;
    final subtitleTextStyle =
        subtitleConfiguration.style ?? style.subtitleTextStyle ?? themeExtension.subtitleTextStyle;

    return Text(text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: subtitleTextStyle);
  }
}
