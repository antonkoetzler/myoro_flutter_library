import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroDropdown].
final class MyoroDropdownWidgetShowcase extends StatefulWidget {
  const MyoroDropdownWidgetShowcase({super.key});

  @override
  State<MyoroDropdownWidgetShowcase> createState() => _MyoroDropdownWidgetShowcaseState();
}

final class _MyoroDropdownWidgetShowcaseState extends State<MyoroDropdownWidgetShowcase> {
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
    return MyoroDropdown(
      dataConfiguration: MyoroDataConfiguration(),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return const Text('Hello, World!');
  }
}
