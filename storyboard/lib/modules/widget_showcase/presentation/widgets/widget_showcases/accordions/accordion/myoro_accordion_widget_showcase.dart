import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_widget.dart';

/// [WidgetShowcase] of [MyoroAccordion].
final class MyoroAccordionWidgetShowcase extends StatelessWidget {
  const MyoroAccordionWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcase(widgetName: MyoroWidgetListEnum.myoroAccordionTitle, widget: _Widget());
  }
}
