import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroGroupRadio].
final class MyoroGroupRadioWidgetShowcase extends StatelessWidget {
  const MyoroGroupRadioWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget());
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroGroupRadio(
      radios: const {
        'Hello': false,
        'World': false,
        'donal': false,
        'trum': true,
      },
    );
  }
}
