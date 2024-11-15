import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSearchInput].
final class MyoroSearchInputWidgetShowcase extends StatelessWidget {
  const MyoroSearchInputWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetShowcase(
      widget: _Widget(),
      widgetOptions: _WidgetOptions(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroSearchInput(
      configuration: const MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
      ),
      request: (_) {},
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
