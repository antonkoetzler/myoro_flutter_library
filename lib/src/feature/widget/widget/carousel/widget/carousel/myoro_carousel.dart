import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_carousel.dart';
part '_widget/_traversal_button.dart';

/// Slider carousel.
class MyoroCarousel extends StatefulWidget {
  const MyoroCarousel({super.key, this.themeExtension, this.controller, required this.configuration});

  /// [ThemeExtension]
  final MyoroCarouselThemeExtension? themeExtension;

  /// Controller.
  final CarouselSliderController? controller;

  /// Configuration.
  final MyoroCarouselConfiguration configuration;

  @override
  State<MyoroCarousel> createState() => _MyoroCarouselState();
}

final class _MyoroCarouselState extends State<MyoroCarousel> {
  MyoroCarouselConfiguration get _configuration => widget.configuration;

  CarouselSliderController? _localController;
  CarouselSliderController get _controller {
    return widget.controller ?? (_localController ??= CarouselSliderController());
  }

  @override
  Widget build(context) {
    final themeExtension = widget.themeExtension ?? const MyoroCarouselThemeExtension.builder();
    final previousItemButtonIcon = themeExtension.previousItemButtonIcon;
    final nextItemButtonIcon = themeExtension.nextItemButtonIcon;

    final displayTraversalButtons = _configuration.displayTraversalButtons;

    return Stack(
      alignment: Alignment.center,
      children: [
        _Carousel(_configuration, _controller),
        if (displayTraversalButtons) ...[
          Positioned(
            child: _TraversalButton(
              Alignment.centerLeft,
              previousItemButtonIcon ?? Icons.keyboard_arrow_left,
              _controller.previousPage,
            ),
          ),
          Positioned(
            child: _TraversalButton(
              Alignment.centerRight,
              nextItemButtonIcon ?? Icons.keyboard_arrow_right,
              _controller.nextPage,
            ),
          ),
        ],
      ],
    );
  }
}
