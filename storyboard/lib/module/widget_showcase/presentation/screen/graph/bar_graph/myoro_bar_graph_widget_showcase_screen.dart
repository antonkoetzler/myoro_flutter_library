import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_sorted_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroBarGraphWidgetShowcaseScreen].
final class MyoroBarGraphWidgetShowcaseScreen extends StatelessWidget {
  static const options = [_SortedOption()];

  const MyoroBarGraphWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroBarGraphWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroBarGraphTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
