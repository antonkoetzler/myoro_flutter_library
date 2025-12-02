import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroSuccessFeedback].
final class MyoroSuccessFeedbackWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = <Widget>[];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroSuccessFeedbackWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroSuccessFeedbackTitle,
        widget: _Widget(),
        configurationOptions: configurationOptions,
        stylingOptions: stylingOptions,
      ),
    );
  }
}
