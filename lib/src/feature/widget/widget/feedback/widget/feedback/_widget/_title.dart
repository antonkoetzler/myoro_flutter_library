part of '../myoro_feedback.dart';

/// Title of [MyoroFeedback].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final configuration = context.read<MyoroFeedbackConfiguration>();
    final titleConfiguration = configuration.titleConfiguration;
    return Text(
      titleConfiguration.text,
      maxLines: titleConfiguration.maxLines,
      overflow: titleConfiguration.overflow,
      textAlign: titleConfiguration.alignment,
      style: titleConfiguration.style ?? themeExtension.titleTextStyle,
    );
  }
}
