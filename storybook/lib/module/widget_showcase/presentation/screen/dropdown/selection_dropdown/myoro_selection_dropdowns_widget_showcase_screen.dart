import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/src/l10n/localization.dart';
import 'package:storybook/storybook.dart';

import 'view_model/myoro_selection_dropdowns_widget_showcase_screen_view_model.dart';

part '_widget/_widget.dart';
part '_widget/_single_dropdown_type_option.dart';
part '_widget/_multi_dropdown_type_option.dart';

/// Widget showcase of [MyoroSelectionDropdown].
final class MyoroSelectionDropdownsWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [_SingleDropdownTypeOption(), _MultiDropdownTypeOption()];

  const MyoroSelectionDropdownsWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroSelectionDropdownsWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroSelectionDropdownsTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
        ),
      ),
    );
  }
}
