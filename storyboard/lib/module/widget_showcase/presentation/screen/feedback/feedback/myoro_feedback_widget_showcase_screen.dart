import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_action_button_configuration_option.dart';
part '_widget/_icon_configuration_option.dart';
part '_widget/_subtitle_configuration_option.dart';
part '_widget/_title_configuration_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroFeedback].
final class MyoroFeedbackWidgetShowcaseScreen extends StatelessWidget {
  static const options = [
    _IconConfigurationOption(),
    _TitleConfigurationOption(),
    _SubtitleConfigurationOption(),
    _ActionButtonConfigurationOption(),
  ];

  const MyoroFeedbackWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroFeedbackWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroFormTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
