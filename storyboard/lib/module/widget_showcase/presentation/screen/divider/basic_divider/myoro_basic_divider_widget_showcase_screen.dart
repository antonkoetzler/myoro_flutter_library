import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_direction_option.dart';
part '_widget/_short_value_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroBasicDivider].
final class MyoroBasicDividerWidgetShowcaseScreen extends StatelessWidget {
  static const options = [_DirectionOption(), _ShortValueOption()];

  const MyoroBasicDividerWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroBasicDividerWidgetShowcaseScreenViewModel(),
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
