import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroAppBar].
final class MyoroAppBarWidgetShowcase extends StatelessWidget {
  const MyoroAppBarWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: MyoroAppBar(child: Text('Hello, World!')),
      widgetOptions: Text('World, Hello!'),
    );
  }
}
