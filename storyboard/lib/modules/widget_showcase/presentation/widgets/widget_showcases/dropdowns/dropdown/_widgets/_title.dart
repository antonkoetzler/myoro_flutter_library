part of '../myoro_dropdown_widget_showcase.dart';

/// Title of either [MyoroMultiDropdown] or [MyoroSingularDropdown].
final class _Title extends StatelessWidget {
  const _Title(this._text) : assert(_text.length > 0);

  /// Text of the title.
  final String _text;

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return Text(_title, style: widgetShowcaseOptionThemeExtension.labelTextStyle);
  }
}
