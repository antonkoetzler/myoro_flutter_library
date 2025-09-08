part of '../bundle/myoro_slider_bundle.dart';

/// Base [Widget] for slider implementations.
class _Base extends StatelessWidget {
  const _Base(this._configuration, this.themeExtension);

  final MyoroSliderBaseConfiguration _configuration;
  final MyoroSlidersThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final resolvedThemeExtension = themeExtension ?? context.resolveThemeExtension<MyoroSlidersThemeExtension>();
    final label = _configuration.label;
    final currentValueText = _configuration.currentValueText;
    final maxValueText = _configuration.maxValueText;
    final footerText = _configuration.footerText;

    final child = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (label.isNotEmpty) _IndicatorText(label),
        Row(
          children: [
            if (currentValueText.isNotEmpty) _IndicatorText(currentValueText),
            Expanded(child: _configuration.widget),
            if (maxValueText.isNotEmpty) _IndicatorText(maxValueText),
          ],
        ),
        if (footerText.isNotEmpty) _IndicatorText(footerText, isFooter: true),
      ],
    );

    return MyoroSingularThemeExtensionWrapper(themeExtension: resolvedThemeExtension, child: child);
  }
}
