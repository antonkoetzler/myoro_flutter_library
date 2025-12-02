import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroErrorFeedback].
final class MyoroErrorFeedbackWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = <Widget>[];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroErrorFeedbackWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcaseScreen(
      configuration: WidgetShowcaseScreenConfiguration(
        widgetName: MyoroWidgetListEnum.myoroErrorFeedbackTitle,
        widget: _Widget(),
        configurationOptions: configurationOptions,
        stylingOptions: stylingOptions,
      ),
    );
  }
}
