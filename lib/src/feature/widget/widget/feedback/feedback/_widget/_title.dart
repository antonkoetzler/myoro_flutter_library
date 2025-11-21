part of '../widget/myoro_feedback.dart';

/// Title of [MyoroFeedback].
final class _Title extends StatelessWidget {
  /// Default constructor.
  const _Title(this._title, this._titleConfiguration);

  /// Title.
  final String _title;

  /// Title configuration.
  final MyoroTextConfiguration? _titleConfiguration;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final maxLines = _titleConfiguration?.maxLines;
    final overflow = _titleConfiguration?.overflow;
    final alignment = _titleConfiguration?.alignment ?? TextAlign.center;
    final titleTextStyle = _titleConfiguration?.style ?? style.titleTextStyle ?? themeExtension.titleTextStyle;
    return Text(_title, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: titleTextStyle);
  }
}
