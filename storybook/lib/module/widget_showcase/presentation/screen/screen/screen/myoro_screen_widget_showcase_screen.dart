import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_app_bar.dart';
part '_widget/_app_bar_option.dart';
part '_widget/_app_bar_title.dart';
part '_widget/_body.dart';
part '_widget/_drawer_enable_open_drag_gesture_option.dart';
part '_widget/_end_drawer_enable_open_drag_gesture_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroScreen].
final class MyoroScreenWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [
    _AppBarOption(),
    _DrawerEnableOpenDragGestureOption(),
    _EndDrawerEnableOpenDragGestureOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroScreenWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroScreenWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroScreenTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
