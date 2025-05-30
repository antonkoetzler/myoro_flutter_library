import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_content_color_builder_option.dart';
part '_widgets/_icon_option.dart';
part '_widgets/_invert_option.dart';
part '_widgets/_padding_option.dart';
part '_widgets/_spacing_option.dart';
part '_widgets/_text_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroIconTextButton].
final class MyoroIconTextButtonWidgetShowcase extends StatelessWidget {
  static const options = [
    _InvertOption(),
    _SpacingOption(),
    _PaddingOption(),
    _ContentColorBuilderOption(),
    _IconOption(),
    _TextOption(),
  ];

  const MyoroIconTextButtonWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return MultiProvider(
      providers: [
        InheritedProvider(create: (_) => MyoroButtonWidgetShowcaseViewModel()),
        InheritedProvider(create: (_) => MyoroIconTextButtonWidgetShowcaseViewModel()),
      ],
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroIconTextButtonTitle,
          widget: _Widget(),
          widgetOptions: [...MyoroButtonWidgetShowcase.options, ...options],
        ),
      ),
    );
  }
}
