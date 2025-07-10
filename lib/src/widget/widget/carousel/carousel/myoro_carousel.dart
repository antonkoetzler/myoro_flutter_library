import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_carousel.dart';
part '_widget/_traversal_button.dart';

/// Slider carousel.
class MyoroCarousel extends MyoroStatefulWidget {
  const MyoroCarousel({super.key, this.controller, required this.configuration});

  final CarouselSliderController? controller;
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
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCarouselThemeExtension>();

    return Stack(
      alignment: Alignment.center,
      children: [
        _Carousel(_configuration, _controller),
        if (_configuration.displayTraversalButtons) ...[
          Positioned(
            child: _TraversalButton(
              Alignment.centerLeft,
              themeExtension.previousItemButtonIcon,
              _controller.previousPage,
            ),
          ),
          Positioned(
            child: _TraversalButton(Alignment.centerRight, themeExtension.nextItemButtonIcon, _controller.nextPage),
          ),
        ],
      ],
    );
  }
}
