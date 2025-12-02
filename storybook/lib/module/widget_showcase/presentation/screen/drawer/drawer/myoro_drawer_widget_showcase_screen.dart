import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_barrier_dismissable_option.dart';
part '_widget/_close_button_content_padding_option.dart';
part '_widget/_is_end_drawer_option.dart';
part '_widget/_show_close_button_option.dart';
part '_widget/_title_options.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroDrawer].
final class MyoroDrawerWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [
    _TitleOptions(),
    _ShowCloseButtonOption(),
    _BarrierDismissableOption(),
    _IsEndDrawerOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [_CloseButtonContentPaddingOption()];

  const MyoroDrawerWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroDrawerWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroDrawerTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
