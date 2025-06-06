import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_constraints_option.dart';
part '_widgets/_padding_option.dart';
part '_widgets/_title_option.dart';
part '_widgets/_title_text_style_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroCard].
final class MyoroCardWidgetShowcase extends StatelessWidget {
  static const options = [_TitleOption(), _PaddingOption(), _ConstraintsOption()];

  const MyoroCardWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroCardWidgetShowcaseViewModel(),
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
