import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_suffix.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroDatePickerInput].
final class MyoroDatePickerInputWidgetShowcaseScreen extends StatelessWidget {
  const MyoroDatePickerInputWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroInputWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDatePickerInputTitle,
          widget: _Widget(),
          widgetOptions: MyoroInputWidgetShowcaseScreen.options,
        ),
      ),
    );
  }
}
