import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/src/l10n/localization.dart';
import 'package:storybook/storybook.dart';

part '_widget/_dropdown_type_option.dart';
part '_widget/_items_option.dart';
part '_widget/_search_callback_option.dart';
part '_widget/_widget.dart';
part 'view_model/myoro_dropdown_widget_showcase_screen_view_model.dart';
part 'view_model/myoro_dropdown_widget_showcase_screen_state.dart';

/// Widget showcase of [MyoroDropdown].
final class MyoroDropdownWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [_DropdownTypeOption(), _ItemsOption(), _SearchCallbackOption()];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroDropdownWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroDropdownWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDropdownsTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
