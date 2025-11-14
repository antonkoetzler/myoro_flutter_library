part of '../widget/myoro_feedback.dart';

/// Subtitle of [MyoroFeedback].
final class _Subtitle extends StatelessWidget {
  /// Default constructor.
  const _Subtitle(this._subtitle, this._subtitleConfiguration);

  /// Subtitle.
  final String _subtitle;

  /// Subtitle configuration.
  final MyoroTextConfiguration? _subtitleConfiguration;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFeedbackThemeExtension>();
    final style = context.watch<MyoroFeedbackStyle>();
    final maxLines = _subtitleConfiguration?.maxLines;
    final overflow = _subtitleConfiguration?.overflow;
    final alignment = _subtitleConfiguration?.alignment;
    final subtitleTextStyle =
        _subtitleConfiguration?.style ?? style.subtitleTextStyle ?? themeExtension.subtitleTextStyle;
    return Text(_subtitle, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: subtitleTextStyle);
  }
}
