import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_background_color_option.dart';
part '_widget/_border_option.dart';
part '_widget/_border_radius_option.dart';
part '_widget/_constraints_option.dart';
part '_widget/_padding_option.dart';
part '_widget/_title_card_spacing_option.dart';
part '_widget/_title_option.dart';
part '_widget/_title_text_style_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroCard].
final class MyoroCardWidgetShowcaseScreen extends StatelessWidget {
  static const options = [
    _TitleOption(),
    _BackgroundColorOption(),
    _BorderOption(),
    _BorderRadiusOption(),
    _PaddingOption(),
    _TitleCardSpacingOption(),
    _TitleTextStyleOption(),
    _ConstraintsOption(),
  ];

  const MyoroCardWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroCardWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroCardTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
