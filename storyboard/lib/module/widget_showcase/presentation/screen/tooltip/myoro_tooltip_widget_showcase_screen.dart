import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_margin_option.dart';
part '_widget/_text_option.dart';
part '_widget/_wait_duration_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroTooltip].
final class MyoroTooltipWidgetShowcaseScreen extends StatelessWidget {
  static const options = [_MarginOption(), _WaitDurationOption(), _TextOption()];

  const MyoroTooltipWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroTooltipWidgetShowcaseScreenViewModel(),
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
