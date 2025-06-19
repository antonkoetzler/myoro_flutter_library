import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_label_options.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroCheckbox].
final class MyoroCheckboxWidgetShowcase extends StatelessWidget {
  static const options = [_LabelOptions()];

  const MyoroCheckboxWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroCheckboxWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroCheckboxTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
