import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_barrier_dismissable_option.dart';
part '_widget/_border_option.dart';
part '_widget/_border_radius_option.dart';
part '_widget/_bottom_sheet_border_option.dart';
part '_widget/_bottom_sheet_border_radius_option.dart';
part '_widget/_close_button_icon_configuration_option.dart';
part '_widget/_close_button_padding_option.dart';
part '_widget/_constraints_option.dart';
part '_widget/_is_bottom_sheet_option.dart';
part '_widget/_on_closed_option.dart';
part '_widget/_padding_option.dart';
part '_widget/_primary_color_option.dart';
part '_widget/_show_close_button_option.dart';
part '_widget/_spacing_option.dart';
part '_widget/_title_option.dart';
part '_widget/_title_text_style_option.dart';
part '_widget/_use_root_navigator_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroModal].
final class MyoroModalWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [
    _IsBottomSheetOption(),
    _BarrierDismissableOption(),
    _UseRootNavigatorOption(),
    _OnClosedOption(),
    _TitleOption(),
    _ShowCloseButtonOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [
    _ConstraintsOption(),
    _PrimaryColorOption(),
    _BorderRadiusOption(),
    _BottomSheetBorderRadiusOption(),
    _BorderOption(),
    _BottomSheetBorderOption(),
    _PaddingOption(),
    _CloseButtonPaddingOption(),
    _SpacingOption(),
    _TitleTextStyleOption(),
    _CloseButtonIconConfigurationOption(),
  ];

  const MyoroModalWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroModalWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroModalTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
