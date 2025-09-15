import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_background_color_builder_option.dart';
part '_widget/_background_color_option.dart';
part '_widget/_border_builder_option.dart';
part '_widget/_border_color_option.dart';
part '_widget/_border_radius_option.dart';
part '_widget/_border_width_option.dart';
part '_widget/_button_content.dart';
part '_widget/_content_color_option.dart';
part '_widget/_content_idle_color_option.dart';
part '_widget/_content_hover_color_option.dart';
part '_widget/_content_tap_color_option.dart';
part '_widget/_cursor_option.dart';
part '_widget/_on_tap_down_enabled_option.dart';
part '_widget/_on_tap_up_enabled_option.dart';
part '_widget/_tooltip_enabled_option.dart';
part '_widget/_widget.dart';

/// [WidgetShowcaseScreen] of [MyoroButton].
final class MyoroButtonWidgetShowcaseScreen extends StatelessWidget {
  static const options = [
    _TooltipEnabledOption(),
    _CursorOption(),
    _BackgroundColorOption(),
    _BackgroundColorBuilderOption(),
    _ContentColorOption(),
    _ContentIdleColorOption(),
    _ContentHoverColorOption(),
    _ContentTapColorOption(),
    _BorderWidthOption(),
    _BorderRadiusOption(),
    _BorderColorOption(),
    _BorderBuilderOption(),
    _OnTapDownEnabledOption(),
    _OnTapUpEnabledOption(),
  ];

  const MyoroButtonWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroButtonWidgetShowcaseScreenViewModel(),
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
