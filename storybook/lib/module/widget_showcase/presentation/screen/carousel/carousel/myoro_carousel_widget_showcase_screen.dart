import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/src/l10n/localization.dart';
import 'package:storybook/storybook.dart';

part '_widget/_autoplay_enabled_option.dart';
part '_widget/_carousel_item.dart';
part '_widget/_direction_option.dart';
part '_widget/_display_traversal_buttons_option.dart';
part '_widget/_initial_item_option.dart';
part '_widget/_previous_item_button_icon_option.dart';
part '_widget/_next_item_button_icon_option.dart';
part '_widget/_widget.dart';
part '_widget/_autoplay_interval_duration_option.dart';

/// Widget showcase of [MyoroCarousel].
final class MyoroCarouselWidgetShowcaseScreen extends StatelessWidget {
  // Configuration-related options (behavior, data, structural properties)
  static const configurationOptions = [
    _DirectionOption(),
    _DisplayTraversalButtonsOption(),
    _InitialItemOption(),
    _AutoplayEnabledOption(),
    _AutoplayIntervalDurationOption(),
  ];

  // Styling-related options (appearance, colors, spacing, theme extension)
  static const stylingOptions = [_PreviousItemButtonIconOption(), _NextItemButtonIconOption()];

  const MyoroCarouselWidgetShowcaseScreen({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroCarouselWidgetShowcaseScreenViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroCarouselTitle,
          widget: _Widget(),
          configurationOptions: configurationOptions,
          stylingOptions: stylingOptions,
        ),
      ),
    );
  }
}
