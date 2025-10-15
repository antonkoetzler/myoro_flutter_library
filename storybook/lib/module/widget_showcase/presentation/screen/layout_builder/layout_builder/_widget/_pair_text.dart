part of '../myoro_layout_builder_widget_showcase_screen.dart';

/// [Text] of a [_Pair].
final class _PairText extends StatelessWidget {
  const _PairText(this._text);

  final String _text;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Text(_text, style: widgetShowcaseThemeExtension.labelTextStyle);
  }
}
