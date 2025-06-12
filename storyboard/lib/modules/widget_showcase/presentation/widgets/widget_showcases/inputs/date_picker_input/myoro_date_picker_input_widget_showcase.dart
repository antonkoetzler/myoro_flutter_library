import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_widget.dart';

/// Widget showcase of [MyoroDatePickerInput].
final class MyoroDatePickerInputWidgetShowcase extends StatelessWidget {
  static const options = MyoroInputWidgetShowcase.options;

  const MyoroDatePickerInputWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroInputWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDatePickerInputTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
