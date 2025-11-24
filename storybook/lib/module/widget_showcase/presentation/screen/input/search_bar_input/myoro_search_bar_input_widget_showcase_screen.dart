import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroSearchBarInput].
final class MyoroSearchBarInputWidgetShowcaseScreen extends StatelessWidget {
  const MyoroSearchBarInputWidgetShowcaseScreen({super.key});

  @override
  Widget build(context) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroSearchBarInputTitle,
        widget: _Widget(),
      ),
    );
  }
}
