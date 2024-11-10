import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroAutocomplete].
final class MyoroAutocompleteWidgetShowcase extends StatefulWidget {
  const MyoroAutocompleteWidgetShowcase({super.key});

  @override
  State<MyoroAutocompleteWidgetShowcase> createState() => _MyoroAutocompleteWidgetShowcaseState();
}

final class _MyoroAutocompleteWidgetShowcaseState extends State<MyoroAutocompleteWidgetShowcase> {
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
    return const MyoroAutocomplete();
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return const Text('Hello, World!');
  }
}
