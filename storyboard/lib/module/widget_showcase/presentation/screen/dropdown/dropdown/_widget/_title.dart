part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// Title of either [MyoroMultiDropdown] or [MyoroSingleDropdown].
final class _Title extends StatelessWidget {
  const _Title(this._text) : assert(_text.length > 0);

  /// Text of the title.
  final String _text;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    return Text(_text, style: widgetShowcaseThemeExtension.labelTextStyle);
  }
}
