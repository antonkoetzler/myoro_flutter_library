import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroFilePicker].
final class MyoroFilePickerWidgetShowcaseScreen extends StatelessWidget {
  const MyoroFilePickerWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroFilePickerWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroFilePickerTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
