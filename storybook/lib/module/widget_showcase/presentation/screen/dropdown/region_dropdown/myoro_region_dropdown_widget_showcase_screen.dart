import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';
part 'view_model/myoro_region_dropdown_widget_showcase_screen_view_model.dart';
part 'view_model/myoro_region_dropdown_widget_showcase_screen_state.dart';

/// Widget showcase screen of [MyoroRegionDropdown].
final class MyoroRegionDropdownWidgetShowcaseScreen extends StatelessWidget {
  const MyoroRegionDropdownWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroRegionDropdownWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroRegionDropdownTitle,
          widget: _Widget(),
        ),
      ),
    );
  }
}
