part of '../widget/myoro_feedback.dart';

/// Title of [MyoroFeedback].
final class _Title extends StatelessWidget {
  /// Default constructor.
  const _Title(this._title);

  /// Title.
  final String _title;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final maxLines = style.titleTextStyle?.maxLines ?? themeExtension.titleTextStyle?.maxLines;
    final overflow = style.titleTextStyle?.overflow ?? themeExtension.titleTextStyle?.overflow;
    final alignment = style.titleTextStyle?.alignment ?? themeExtension.titleTextStyle?.alignment;
    final titleTextStyle = style.titleTextStyle?.style ?? themeExtension.titleTextStyle?.style;
    return Text(_title, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: titleTextStyle);
  }
}
