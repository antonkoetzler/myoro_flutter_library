part of '../widget/myoro_feedback.dart';

/// Subtitle of [MyoroFeedback].
final class _Subtitle extends StatelessWidget {
  /// Default constructor.
  const _Subtitle(this._subtitle);

  /// Subtitle.
  final String _subtitle;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final maxLines = style.subtitleTextStyle?.maxLines ?? themeExtension.subtitleTextStyle?.maxLines;
    final overflow = style.subtitleTextStyle?.overflow ?? themeExtension.subtitleTextStyle?.overflow;
    final alignment = style.subtitleTextStyle?.alignment ?? themeExtension.subtitleTextStyle?.alignment;
    final textStyle = style.subtitleTextStyle?.style ?? themeExtension.subtitleTextStyle?.style;
    return Text(_subtitle, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: textStyle);
  }
}
