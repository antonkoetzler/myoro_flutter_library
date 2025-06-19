import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_widget.dart';

/// [WidgetShowcaseScreen] of [MyoroAccordion].
final class MyoroAccordionWidgetShowcaseScreen extends StatelessWidget {
  const MyoroAccordionWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroAccordionWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroAccordionTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
