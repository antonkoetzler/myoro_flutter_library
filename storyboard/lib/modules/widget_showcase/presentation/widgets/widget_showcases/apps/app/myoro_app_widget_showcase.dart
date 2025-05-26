import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_theme_mode_option.dart';
part '_widgets/_widget.dart';

/// [WidgetShowcase] of [MyoroAppBar].
final class MyoroAppWidgetShowcase extends StatelessWidget {
  const MyoroAppWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedProvider(
      create: (_) => MyoroAppWidgetShowcaseViewModel(KiwiContainer().resolve<ThemeModeController>().themeMode),
      child: const WidgetShowcase(
        widgetName: MyoroWidgetListEnum.myoroAppTitle,
        widget: _Widget(),
        widgetOptions: [_ThemeModeOption()],
      ),
    );
  }
}
