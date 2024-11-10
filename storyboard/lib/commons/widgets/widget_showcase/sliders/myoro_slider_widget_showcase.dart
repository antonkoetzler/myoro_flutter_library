import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSlider].
final class MyoroSliderWidgetShowcase extends StatefulWidget {
  const MyoroSliderWidgetShowcase({super.key});

  @override
  State<MyoroSliderWidgetShowcase> createState() => _MyoroSliderWidgetShowcaseState();
}

class _MyoroSliderWidgetShowcaseState extends State<MyoroSliderWidgetShowcase> {
  final _widthNotifier = ValueNotifier<double?>(null);

  @override
  void dispose() {
    _widthNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WidgetShowcase(
      widget: const _Widget(),
      widgetOptions: _WidgetOptions(_widthNotifier),
    );
  }
}

final class _Widget extends StatefulWidget {
  const _Widget();

  @override
  State<_Widget> createState() => _WidgetState();
}

class _WidgetState extends State<_Widget> {
  final _sliderValueNotifier = ValueNotifier<double>(0.5);

  @override
  void dispose() {
    _sliderValueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: MyoroSlider(
            onChanged: (double value) => _sliderValueNotifier.value = value,
          ),
        ),
        SizedBox(height: themeExtension.widgetSliderLabelSpacing),
        ValueListenableBuilder(
          valueListenable: _sliderValueNotifier,
          builder: (_, double sliderValue, __) {
            return Text(
              'Slider\'s value: ${sliderValue.toStringAsFixed(2)}',
              style: themeExtension.widgetSliderValueTextStyle,
            );
          },
        ),
      ],
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  final ValueNotifier<double?> widthNotifier;

  const _WidgetOptions(this.widthNotifier);

  @override
  Widget build(BuildContext context) {
    return MyoroSlider(
      label: '[MyoroSlider.width]',
      onChanged: (double value) => widthNotifier.value = value,
    );
  }
}
