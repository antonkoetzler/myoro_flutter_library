import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase screen of [MyoroImage].
final class MyoroImageWidgetShowcaseScreen extends StatelessWidget {
  const MyoroImageWidgetShowcaseScreen({super.key});

  @override
  Widget build(context) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroImageTitle,
        widget: _Widget(),
      ),
    );
  }
}
