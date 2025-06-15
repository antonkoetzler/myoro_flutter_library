import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_background_color_builder_option.dart';
part '_widget/_border_builder_option.dart';
part '_widget/_button_content.dart';
part '_widget/_cursor_option.dart';
part '_widget/_on_tap_down_enabled_option.dart';
part '_widget/_on_tap_up_enabled_option.dart';
part '_widget/_tooltip_enabled_option.dart';
part '_widget/_widget.dart';

/// [WidgetShowcase] of [MyoroButton].
final class MyoroButtonWidgetShowcase extends StatelessWidget {
  static const options = [
    _TooltipEnabledOption(),
    _CursorOption(),
    _BackgroundColorBuilderOption(),
    _BorderBuilderOption(),
    _OnTapDownEnabledOption(),
    _OnTapUpEnabledOption(),
  ];

  const MyoroButtonWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroButtonWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroButtonTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
