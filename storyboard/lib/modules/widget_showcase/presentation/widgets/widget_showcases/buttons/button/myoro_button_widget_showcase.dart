import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_widget.dart';

/// [WidgetShowcase] of [MyoroButton].
final class MyoroButtonWidgetShowcase extends StatelessWidget {
  const MyoroButtonWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroButtonWidgetShowcaseViewModel(),
      child: WidgetShowcase(widgetName: MyoroWidgetListEnum.myoroButtonTitle, widget: _Widget(), widgetOptions: [
      ],
    ),
    );
  }
}
