import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroMultiDropdown].
final class MyoroMultiDropdownWidgetShowcase extends StatelessWidget {
  const MyoroMultiDropdownWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget(), widgetOptions: []);
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroMultiDropdown(
      configuration: MyoroMultiDropdownConfiguration<String>(
        dataConfiguration: MyoroDataConfiguration.fake(),
        menuItemBuilder: _menuItemBuilder,
        selectedItemBuilder: _selectedItemBuilder,
      ),
    );
  }

  MyoroMenuItem _menuItemBuilder(String item) {
    return MyoroMenuItem.fake().copyWith(text: item);
  }

  String _selectedItemBuilder(String item) {
    return item;
  }
}
