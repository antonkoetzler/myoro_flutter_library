import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_direction_option.dart';
part '_widgets/_padding_option.dart';
part '_widgets/_short_value_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroBasicDivider].
final class MyoroBasicDividerWidgetShowcase extends StatelessWidget {
  static const options = [_DirectionOption(), _ShortValueOption(), _PaddingOption()];

  const MyoroBasicDividerWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroBasicDividerWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroBasicDividerTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
