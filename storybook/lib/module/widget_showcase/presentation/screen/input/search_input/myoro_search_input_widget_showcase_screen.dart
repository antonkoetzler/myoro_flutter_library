import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase screen of [MyoroSearchInput].
final class MyoroSearchInputWidgetShowcaseScreen extends StatelessWidget {
  const MyoroSearchInputWidgetShowcaseScreen({super.key});

  @override
  Widget build(context) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroSearchInputTitle,
        widget: _Widget(),
      ),
    );
  }
}
