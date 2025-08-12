import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroRangeSlider].
final class MyoroRangeSliderWidgetShowcaseScreen extends StatelessWidget {
  const MyoroRangeSliderWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroRangeSliderTitle,
        widget: _Widget(),
      ),
    );
  }
}
