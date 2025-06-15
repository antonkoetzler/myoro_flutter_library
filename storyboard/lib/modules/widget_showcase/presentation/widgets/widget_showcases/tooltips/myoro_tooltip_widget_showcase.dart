import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_margin_option.dart';
part '_widgets/_text_option.dart';
part '_widgets/_wait_duration_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroTooltip].
final class MyoroTooltipWidgetShowcase extends StatelessWidget {
  static const options = [_MarginOption(), _WaitDurationOption(), _TextOption()];

  const MyoroTooltipWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroTooltipWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroTooltipTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
