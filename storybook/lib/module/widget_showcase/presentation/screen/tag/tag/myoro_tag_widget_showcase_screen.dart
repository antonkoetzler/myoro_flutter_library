import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_background_color_option.dart';
part '_widget/_border_option.dart';
part '_widget/_border_radius_option.dart';
part '_widget/_content_padding_option.dart';
part '_widget/_icon_option.dart';
part '_widget/_invert_option.dart';
part '_widget/_spacing_option.dart';
part '_widget/_text_option.dart';
part '_widget/_widget.dart';

/// [WidgetShowcaseScreen] of [MyoroTag].
final class MyoroTagWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, callbacks, structural properties)
  static const configurationOptions = [_IconOption(), _TextOption(), _InvertOption()];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [
    _BackgroundColorOption(),
    _ContentPaddingOption(),
    _BorderRadiusOption(),
    _BorderOption(),
    _SpacingOption(),
  ];

  const MyoroTagWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroTagWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroTagTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
