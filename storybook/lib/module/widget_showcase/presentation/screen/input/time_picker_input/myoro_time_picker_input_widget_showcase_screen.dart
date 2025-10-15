import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_suffix.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroTimePickerInput].
final class MyoroTimePickerInputWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = <Widget>[];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroTimePickerInputWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroTimePickerInputWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroTimePickerInputTitle,
          widget: _Widget(),
          configurationOptions: [
            ...MyoroTimePickerInputWidgetShowcaseScreen.configurationOptions,
            ...MyoroInputWidgetShowcaseScreen.configurationOptions,
          ],
          stylingOptions: [
            ...MyoroTimePickerInputWidgetShowcaseScreen.stylingOptions,
            ...MyoroInputWidgetShowcaseScreen.stylingOptions,
          ],
        ),
      ),
    );
  }
}
