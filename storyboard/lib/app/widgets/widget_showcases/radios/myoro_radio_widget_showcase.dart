import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroRadio].
final class MyoroRadioWidgetShowcase extends StatelessWidget {
  const MyoroRadioWidgetShowcase({super.key});

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
    return const MyoroRadio(
      initialValue: true,
      label: 'Poopy',
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return const Text('TODO');
  }
}
