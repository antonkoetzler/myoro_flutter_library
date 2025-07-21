import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_theme_mode_option.dart';
part '_widget/_widget.dart';

/// [WidgetShowcaseScreen] of [MyoroAppBar].
final class MyoroAppWidgetShowcaseScreen extends StatelessWidget {
  static const options = [_ThemeModeOption()];

  const MyoroAppWidgetShowcaseScreen({super.key});

  @override
  Widget build(context) {
    return InheritedProvider(
      create: (_) => MyoroAppWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroAppTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
