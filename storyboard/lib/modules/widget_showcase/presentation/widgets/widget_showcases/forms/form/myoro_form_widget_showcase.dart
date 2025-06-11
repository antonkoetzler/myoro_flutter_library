import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_input.dart';
part '_widgets/_kitty.dart';
part '_widgets/_submit_button.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroForm].
final class MyoroFormWidgetShowcase extends StatelessWidget {
  const MyoroFormWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroFormWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroFormTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
