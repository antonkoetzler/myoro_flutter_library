import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSlider].
final class MyoroSliderWidgetShowcase extends StatelessWidget {
  const MyoroSliderWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: const _Widget(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroSlider(
      currentValueIndicatorTextBuilder: (double value) => value.toString(),
      maxValueIndicatorTextBuilder: (double value) => value.toString(),
      footerIndicatorTextBuilder: (double value) => value.toString(),
      onChanged: (_) => throw UnimplementedError(),
    );
  }
}
