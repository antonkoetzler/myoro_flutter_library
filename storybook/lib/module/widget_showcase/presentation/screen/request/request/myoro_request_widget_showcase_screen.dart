import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_widget.dart';

/// Widget showcase of [MyoroRequestWidget].
final class MyoroRequestWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = <Widget>[];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroRequestWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroRequestWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroRequestWidgetTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
