import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroDatePickerInput].
final class MyoroDatePickerInputWidgetShowcase extends StatelessWidget {
  const MyoroDatePickerInputWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: _Widget(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroDatePickerInput(
      configuration: MyoroInputConfiguration(
        inputStyle: context.resolveThemeExtension<MyoroDatePickerInputWidgetShowcaseThemeExtension>().inputStyle,
      ),
    );
  }
}
