import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_autoplay_options.dart';
part '_widgets/_carousel_item.dart';
part '_widgets/_direction_option.dart';
part '_widgets/_display_traversal_buttons_option.dart';
part '_widgets/_widget.dart';

/// Widget showcase of [MyoroCarousel].
final class MyoroCarouselWidgetShowcase extends StatelessWidget {
  static const options = [_DirectionOption(), _DisplayTraversalButtonsOption(), _AutoplayOptions()];

  const MyoroCarouselWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return InheritedProvider(
      create: (_) => MyoroCarouselWidgetShowcaseViewModel(),
      child: const WidgetShowcaseScreen(
        configuration: WidgetShowcaseScreenConfiguration(
          widgetName: MyoroWidgetListEnum.myoroCarouselTitle,
          widget: _Widget(),
          widgetOptions: options,
        ),
      ),
    );
  }
}
