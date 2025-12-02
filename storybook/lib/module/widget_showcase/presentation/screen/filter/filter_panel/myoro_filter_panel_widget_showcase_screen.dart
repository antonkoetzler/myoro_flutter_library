import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroFilterPanel].
final class MyoroFilterPanelWidgetShowcaseScreen extends StatelessWidget {
  const MyoroFilterPanelWidgetShowcaseScreen({super.key});

  @override
  Widget build(context) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroFilterPanelTitle,
        widget: _Widget(),
      ),
    );
  }
}
