import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroMenu].
final class MyoroMenuWidgetShowcase extends StatefulWidget {
  const MyoroMenuWidgetShowcase({super.key});

  @override
  State<MyoroMenuWidgetShowcase> createState() => _MyoroMenuWidgetShowcaseState();
}

final class _MyoroMenuWidgetShowcaseState extends State<MyoroMenuWidgetShowcase> {
  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: _Widget(),
      widgetOptions: _WidgetOptions(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return const MyoroMenu();
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return const Text('TODO');
  }
}
