import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroBasicDivider].
final class MyoroBasicDividerWidgetShowcase extends StatelessWidget {
  const MyoroBasicDividerWidgetShowcase({super.key});

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
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _Button('A button'),
        MyoroBasicDivider(Axis.horizontal),
        _Button('Another button'),
      ],
    );
  }
}

final class _Button extends StatelessWidget {
  final String _text;

  const _Button(this._text);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      text: _text,
      onPressed: () {},
    );
  }
}
