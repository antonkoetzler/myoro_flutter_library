import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_background_color_option.dart';
part '_widgets/_bordered_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroAppBar].
final class MyoroAppBarWidgetShowcase extends StatelessWidget {
  static const widgetOptions = [_BorderedOption(), _BackgroundColorOption()];

  const MyoroAppBarWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroAppBarWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroAppBarTitle,
          widget: _Widget(),
          widgetOptions: widgetOptions,
        ),
      ),
    );
  }
}
