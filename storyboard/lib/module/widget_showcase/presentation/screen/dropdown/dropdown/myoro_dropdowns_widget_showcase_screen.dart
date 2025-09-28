import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_dropdown_type_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroDropdown].
final class MyoroDropdownsWidgetShowcaseScreen extends StatelessWidget {
  static const configurationOptions = [_DropdownTypeOption()];

  const MyoroDropdownsWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroDropdownsWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDropdownsTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
        ),
      ),
    );
  }
}
