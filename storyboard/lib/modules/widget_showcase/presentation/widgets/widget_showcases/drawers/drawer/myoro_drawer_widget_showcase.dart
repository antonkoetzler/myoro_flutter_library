import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_barrier_dismissable_option.dart';
part '_widgets/_is_end_drawer_option.dart';
part '_widgets/_show_close_button_option.dart';
part '_widgets/_title_options.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroDrawer].
final class MyoroDrawerWidgetShowcase extends StatelessWidget {
  static const options = [_TitleOptions(), _ShowCloseButtonOption(), _BarrierDismissableOption(), _IsEndDrawerOption()];

  const MyoroDrawerWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroDrawerWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDrawerTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
