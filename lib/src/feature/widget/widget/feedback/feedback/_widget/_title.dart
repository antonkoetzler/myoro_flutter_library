part of '../widget/myoro_feedback.dart';

/// Title of [MyoroFeedback].
final class _Title extends StatelessWidget {
  const _Title(this._titleConfiguration);

  final MyoroTextConfiguration _titleConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final text = _titleConfiguration.text;
    final maxLines = _titleConfiguration.maxLines;
    final overflow = _titleConfiguration.overflow;
    final alignment = _titleConfiguration.alignment;
    final titleTextStyle = _titleConfiguration.style ?? style.titleTextStyle ?? themeExtension.titleTextStyle;
    return Text(text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: titleTextStyle);
  }
}
