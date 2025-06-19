import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_widget.dart';

/// [WidgetShowcase] of [MyoroAccordion].
final class MyoroAccordionWidgetShowcase extends StatelessWidget {
  const MyoroAccordionWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroAccordionWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroAccordionTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
