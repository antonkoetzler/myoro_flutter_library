part of '../myoro_feedback.dart';

/// Title of [MyoroFeedback].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final configuration = context.read<MyoroFeedbackConfiguration>();
    final style = context.read<MyoroFeedbackStyle>();
    final titleConfiguration = configuration.titleConfiguration;
    final text = titleConfiguration.text;
    final maxLines = titleConfiguration.maxLines;
    final overflow = titleConfiguration.overflow;
    final alignment = titleConfiguration.alignment;
    final titleTextStyle = titleConfiguration.style ?? style.titleTextStyle ?? themeExtension.titleTextStyle;

    return Text(text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: titleTextStyle);
  }
}
