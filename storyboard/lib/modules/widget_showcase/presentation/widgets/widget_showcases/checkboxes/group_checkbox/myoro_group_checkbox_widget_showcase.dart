import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_direction_option.dart';
part '_widgets/_run_spacing_option.dart';
part '_widgets/_spacing_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroGroupCheckbox].
final class MyoroGroupCheckboxWidgetShowcase extends StatelessWidget {
  static const options = [_DirectionOption(), _SpacingOption(), _RunSpacingOption()];

  const MyoroGroupCheckboxWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroGroupCheckboxWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroGroupCheckboxTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
