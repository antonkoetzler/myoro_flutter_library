import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_widget.dart';

/// Widget showcase of [MyoroResizeDivider].
final class MyoroResizeDividerWidgetShowcase extends StatelessWidget {
  const MyoroResizeDividerWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroBasicDividerWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroResizeDividerTitle,
          widget: _Widget(),
          widgetOptions: MyoroBasicDividerWidgetShowcase.options,
        ),
      ),
    );
  }
}
