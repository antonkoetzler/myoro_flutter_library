import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_label_option.dart';
part '_widgets/_label_text_style_option.dart';
part '_widgets/_on_changed_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroRadio].
final class MyoroRadioWidgetShowcase extends StatelessWidget {
  static const options = [_LabelOption(), _LabelTextStyleOption(), _OnChangedOption()];

  const MyoroRadioWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroRadioWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroRadioTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
