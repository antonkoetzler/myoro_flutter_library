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
  var _inputType = MyoroInputTypeEnum.outlined;

  @override
  Widget build(BuildContext context) {
    return WidgetShowcase(
      widget: _Widget(_inputType),
      widgetOptions: _WidgetOptions(
        onChangeInputType: (MyoroInputTypeEnum inputType) => _inputType = inputType,
      ),
    );
  }
}

final class _Widget extends StatelessWidget {
  final MyoroInputTypeEnum inputType;

  const _Widget(this.inputType);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello, World!');
  }
}

final class _WidgetOptions extends StatelessWidget {
  final Function(MyoroInputTypeEnum inputType) onChangeInputType;

  const _WidgetOptions({
    required this.onChangeInputType,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('THIS NEEDS TO BE FINISHED FUCK');
  }
}
