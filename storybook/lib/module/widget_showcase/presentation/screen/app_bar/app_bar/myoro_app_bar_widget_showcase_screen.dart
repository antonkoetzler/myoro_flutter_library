import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_background_color_option.dart';
part '_widget/_show_bottom_divider_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroAppBar].
final class MyoroAppBarWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [_ShowBottomDividerOption()];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [_BackgroundColorOption()];

  const MyoroAppBarWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroAppBarWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroAppBarTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
