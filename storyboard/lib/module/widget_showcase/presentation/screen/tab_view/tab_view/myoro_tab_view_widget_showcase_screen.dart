import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroTabView].
final class MyoroTabViewWidgetShowcaseScreen extends StatelessWidget {
  const MyoroTabViewWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroTabViewTitle,
        widget: _Widget(),
      ),
    );
  }
}
