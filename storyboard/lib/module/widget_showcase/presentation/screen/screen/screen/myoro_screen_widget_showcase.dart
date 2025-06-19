import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_app_bar.dart';
part '_widget/_app_bar_menu_button.dart';
part '_widget/_app_bar_option.dart';
part '_widget/_app_bar_title.dart';
part '_widget/_body.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroScreen].
final class MyoroScreenWidgetShowcase extends StatelessWidget {
  static const options = [_AppBarOption()];

  const MyoroScreenWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroScreenWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroScreenTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
