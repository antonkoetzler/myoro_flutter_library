import 'package:flutter/material.dart';
import 'package:storybook/storybook.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '../_widget/_widget.dart';

/// Widget showcase screen of the scrollable widgets.
final class MyoroScrollablesWidgetShowcaseScreen extends StatelessWidget {
  const MyoroScrollablesWidgetShowcaseScreen({super.key});

  @override
  Widget build(context) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroSingleChildScrollableTitle,
        widget: _Widget(),
      ),
    );
  }
}
