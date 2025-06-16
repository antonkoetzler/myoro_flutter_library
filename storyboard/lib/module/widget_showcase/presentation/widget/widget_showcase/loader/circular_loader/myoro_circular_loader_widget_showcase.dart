import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_color_option.dart';
part '_widget/_size_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroCircularLoader].
final class MyoroCircularLoaderWidgetShowcase extends StatelessWidget {
  static const options = [_ColorOption(), _SizeOption()];

  const MyoroCircularLoaderWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroCircularLoaderWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroCircularLoaderTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
