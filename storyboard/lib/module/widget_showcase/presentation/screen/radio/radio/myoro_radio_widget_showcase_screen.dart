import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_label_option.dart';
part '_widget/_label_text_style_option.dart';
part '_widget/_on_changed_option.dart';
part '_widget/_widget.dart';

/// Widget showcase of [MyoroRadio].
final class MyoroRadioWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [_LabelOption(), _OnChangedOption()];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [_LabelTextStyleOption()];

  const MyoroRadioWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroRadioWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroRadioTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
