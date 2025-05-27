import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_background_color_builder_option.dart';
part '_widgets/_border_builder_option.dart';
part '_widgets/_button_content.dart';
part '_widgets/_cursor_option.dart';
part '_widgets/_on_tap_down_enabled_option.dart';
part '_widgets/_on_tap_up_enabled_option.dart';
part '_widgets/_tooltip_enabled_option.dart';
part '_widgets/_widget.dart';

/// [WidgetShowcase] of [MyoroButton].
final class MyoroButtonWidgetShowcase extends StatelessWidget {
  const MyoroButtonWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroButtonWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroButtonTitle,
          widget: _Widget(),
          widgetOptions: [
            _TooltipEnabledOption(),
            _CursorOption(),
            _BackgroundColorBuilderOption(),
            _BorderBuilderOption(),
            _OnTapDownEnabledOption(),
            _OnTapUpEnabledOption(),
          ],
        ),
      ),
    );
  }
}
