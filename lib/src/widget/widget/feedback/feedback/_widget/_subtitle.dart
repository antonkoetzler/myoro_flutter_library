part of '../myoro_feedback.dart';

/// Subtitle of [MyoroFeedback].
final class _Subtitle extends StatelessWidget {
  const _Subtitle();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final configuration = context.read<MyoroFeedbackConfiguration>();
    final subtitleConfiguration = configuration.subtitleConfiguration;
    return Text(
      subtitleConfiguration!.text,
      maxLines: subtitleConfiguration.maxLines,
      overflow: subtitleConfiguration.overflow,
      textAlign: subtitleConfiguration.alignment,
      style: subtitleConfiguration.style ?? themeExtension.subtitleTextStyle,
    );
  }
}
