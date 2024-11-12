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
  // TODO: maxHeight, maxWidth, iconSize, textStyle, textAlign
  final _itemCountNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _itemCountNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WidgetShowcase(
      widget: _Widget(_itemCountNotifier),
      widgetOptions: _WidgetOptions(_itemCountNotifier),
    );
  }
}

final class _Widget extends StatelessWidget {
  final ValueNotifier<int> itemCountNotifier;

  const _Widget(this.itemCountNotifier);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: itemCountNotifier,
      builder: (_, int itemCount, __) {
        return MyoroMenu(
          items: List.generate(
            itemCount,
            (_) => MyoroMenuItem.fake(),
          ),
        );
      },
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  final ValueNotifier<int> itemCountNotifier;

  const _WidgetOptions(this.itemCountNotifier);

  @override
  Widget build(BuildContext context) {
    return _ItemCountOption(itemCountNotifier);
  }
}

final class _ItemCountOption extends StatelessWidget {
  final ValueNotifier<int> itemCountNotifier;

  const _ItemCountOption(this.itemCountNotifier);

  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      max: 100,
      configuration: MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
        label: '# of items',
        onChanged: (String text) => itemCountNotifier.value = text.isEmpty ? 0 : int.parse(text),
      ),
    );
  }
}
