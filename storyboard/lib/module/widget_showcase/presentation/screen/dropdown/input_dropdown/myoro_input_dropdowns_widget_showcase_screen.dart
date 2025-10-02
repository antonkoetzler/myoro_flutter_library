import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroInputDropdown].
final class MyoroInputDropdownsWidgetShowcaseScreen extends StatelessWidget {
  const MyoroInputDropdownsWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroInputDropdownTitle,
        widget: _Widget(),
      ),
    );
  }
}
