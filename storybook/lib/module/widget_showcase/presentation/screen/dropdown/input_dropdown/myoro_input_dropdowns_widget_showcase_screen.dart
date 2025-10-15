import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_dropdown_type_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroInputDropdown].
final class MyoroInputDropdownsWidgetShowcaseScreen extends StatelessWidget {
  static const configurationOptions = [_DropdownTypeOption()];

  const MyoroInputDropdownsWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroInputDropdownsWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroInputDropdownTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
        ),
      ),
    );
  }
}
