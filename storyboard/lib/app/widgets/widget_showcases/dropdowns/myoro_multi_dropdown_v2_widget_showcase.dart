import 'package:faker/faker.dart';
import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroMultiDropdownV2].
final class MyoroMultiDropdownV2WidgetShowcase extends StatelessWidget {
  const MyoroMultiDropdownV2WidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget());
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroMultiDropdownV2<String>(
      configuration: MyoroMultiDropdownV2Configuration(
        dataConfiguration: MyoroDataConfiguration(
          staticItems: List.generate(
            faker.randomGenerator.integer(50),
            (_) => faker.lorem.word(),
          ),
        ),
        menuItemBuilder:
            (String text) =>
                MyoroMenuItem.fake().copyWith(text: text, isHovered: false),
        selectedItemBuilder: (String text) => text,
        checkboxOnChanged: (_, __) => print('Works'),
      ),
    );
  }
}
