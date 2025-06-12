import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_pair.dart';
part '_widgets/_pair_text.dart';
part '_widgets/_title.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroLayoutBuilder].
final class MyoroLayoutBuilderWidgetShowcase extends StatelessWidget {
  const MyoroLayoutBuilderWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroLayoutBuilderTitle,
        widget: _Widget(),
      ),
    );
  }
}
