import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_button.dart';
part '_widget/_gradient_size_option.dart';
part '_widget/_gradient_color_option.dart';
part '_widget/_scroll_direction_option.dart';
part '_widget/_physics_option.dart';
part '_widget/_widget.dart';
part '_widget/_single_child_scrollable_section.dart';
part '_widget/_list_scrollable_section.dart';
part '_widget/_grid_scrollable_section.dart';
part '_widget/_sliver_scrollable_section.dart';

/// [WidgetShowcaseScreen] of scrollable widgets.
final class MyoroScrollablesWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, callbacks, structural properties)
  static const configurationOptions = [
    _ScrollDirectionOption(),
    _PhysicsOption(),
    _GradientSizeOption(),
    _GradientColorOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = <Widget>[];

  const MyoroScrollablesWidgetShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedProvider(
      create: (_) => MyoroScrollablesWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: 'MyoroScrollable Widgets',
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
