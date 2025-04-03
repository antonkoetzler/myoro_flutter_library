import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroSingularDropdown].
final class MyoroSingularDropdownWidgetShowcase extends StatelessWidget {
  const MyoroSingularDropdownWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget(), widgetOptions: []);
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration<String>(
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
