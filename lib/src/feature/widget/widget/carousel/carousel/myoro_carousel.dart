import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_carousel.dart';
part '_widget/_traversal_button.dart';

/// Slider carousel.
class MyoroCarousel extends StatelessWidget {
  /// Default value for [direction].
  static const directionDefaultValue = Axis.horizontal;

  /// Default value for [displayTraversalButtons].
  static const displayTraversalButtonsDefaultValue = false;

  /// Default value for [initialItem].
  static const initialItemDefaultValue = 0;

  /// Default value for [autoplay].
  static const autoplayDefaultValue = false;

  /// Default value for [autoplayIntervalDuration].
  static const autoplayIntervalDurationDefaultValue = Duration(seconds: 3);

  const MyoroCarousel({
    super.key,
    this.style = const MyoroCarouselStyle(),
    this.controller,
    this.direction = directionDefaultValue,
    this.displayTraversalButtons = displayTraversalButtonsDefaultValue,
    this.initialItem = initialItemDefaultValue,
    this.autoplay = autoplayDefaultValue,
    this.autoplayIntervalDuration = autoplayIntervalDurationDefaultValue,
    required this.items,
  }) : assert(items.length > 0, '[MyoroCarousel]: [items] cannot be empty.');

  /// [ThemeExtension]
  final MyoroCarouselStyle style;

  /// Controller.
  final CarouselSliderController? controller;

  /// Direction that the carousel is sliding in.
  final Axis direction;

  /// Display buttons to traverse [items].
  final bool displayTraversalButtons;

  /// Initial item from [slides] starting in the carousel.
  final int initialItem;

  /// If the carousel autoslides [items].
  final bool autoplay;

  /// [autoplay] interval duration.
  final Duration autoplayIntervalDuration;

  /// Slides of the carousel.
  final List<Widget> items;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCarouselThemeExtension>();
    final previousItemButtonIcon = style.previousItemButtonIcon ?? themeExtension.previousItemButtonIcon;
    final nextItemButtonIcon = style.nextItemButtonIcon ?? themeExtension.nextItemButtonIcon;

    final controller = this.controller ?? CarouselSliderController();

    return InheritedProvider.value(
      value: style,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _Carousel(controller, direction, initialItem, autoplay, autoplayIntervalDuration, items),
          if (displayTraversalButtons) ...[
            Positioned(
              child: _TraversalButton(
                Alignment.centerLeft,
                previousItemButtonIcon ?? Icons.keyboard_arrow_left,
                controller.previousPage,
              ),
            ),
            Positioned(
              child: _TraversalButton(
                Alignment.centerRight,
                nextItemButtonIcon ?? Icons.keyboard_arrow_right,
                controller.nextPage,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
