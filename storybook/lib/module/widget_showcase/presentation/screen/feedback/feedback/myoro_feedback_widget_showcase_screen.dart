import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_action_button_configuration_option.dart';
part '_widget/_icon_configuration_option.dart';
part '_widget/_subtitle_configuration_option.dart';
part '_widget/_title_configuration_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroFeedback].
final class MyoroFeedbackWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = <Widget>[
    _IconConfigurationOption(),
    _TitleConfigurationOption(),
    _SubtitleConfigurationOption(),
    _ActionButtonConfigurationOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroFeedbackWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroFeedbackWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroFormTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
