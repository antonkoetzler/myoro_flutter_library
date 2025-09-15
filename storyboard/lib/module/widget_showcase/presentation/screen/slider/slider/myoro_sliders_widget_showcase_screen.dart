import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_current_value_text_option.dart';
part '_widget/_footer_text_option.dart';
part '_widget/_indicator_text_alignment_option.dart';
part '_widget/_indicator_text_style_option.dart';
part '_widget/_label_option.dart';
part '_widget/_max_option.dart';
part '_widget/_max_value_text_option.dart';
part '_widget/_min_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroSlider].
final class MyoroSlidersWidgetShowcaseScreen extends StatelessWidget {
  static const options = [
    _LabelOption(),
    _MinOption(),
    _MaxOption(),
    _CurrentValueTextOption(),
    _MaxValueTextOption(),
    _FooterTextOption(),
    _IndicatorTextStyleOption(),
    _IndicatorTextAlignmentOption(),
  ];

  const MyoroSlidersWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroSlidersWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroSlidersTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
