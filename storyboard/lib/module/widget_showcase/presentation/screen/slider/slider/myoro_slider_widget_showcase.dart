import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_current_value_indicator_text_builder_option.dart';
part '_widget/_footer_indicator_text_builder_option.dart';
part '_widget/_label_option.dart';
part '_widget/_label_text_style_option.dart';
part '_widget/_max_value_indicator_text_builder_option.dart';
part '_widget/_on_changed_option.dart';
part '_widget/_widget.dart';
part '_widget/_width_option.dart';

/// Widget showcase of [MyoroSlider].
final class MyoroSliderWidgetShowcase extends StatelessWidget {
  static const options = [
    _LabelOption(),
    _LabelTextStyleOption(),
    _WidthOption(),
    _CurrentValueIndicatorTextBuilderOption(),
    _MaxValueIndicatorTextBuilderOption(),
    _FooterIndicatorTextBuilderOption(),
    _OnChangedOption(),
  ];

  const MyoroSliderWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroSliderWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroSliderTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
