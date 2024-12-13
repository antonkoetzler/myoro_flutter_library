import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroInput].
final class MyoroInputWidgetShowcase extends StatefulWidget {
  const MyoroInputWidgetShowcase({super.key});

  @override
  State<MyoroInputWidgetShowcase> createState() => _MyoroInputWidgetShowcaseState();
}

final class _MyoroInputWidgetShowcaseState extends State<MyoroInputWidgetShowcase> {
  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget());
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: const MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
      ),
      formatter: MyoroTimeInputFormatter(),
    );
  }
}
