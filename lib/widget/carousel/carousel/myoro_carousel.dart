import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_carousel.dart';
part '_widgets/_traversal_button.dart';

/// Slider carousel.
class MyoroCarousel extends StatefulWidget {
  const MyoroCarousel({super.key, this.controller, required this.configuration});

  final MyoroCarouselController? controller;
  final MyoroCarouselConfiguration configuration;

  @override
  State<MyoroCarousel> createState() => _MyoroCarouselState();
}

final class _MyoroCarouselState extends State<MyoroCarousel> {
  MyoroCarouselConfiguration get _configuration => widget.configuration;

  MyoroCarouselController? _localController;
  MyoroCarouselController get _controller {
    return widget.controller ?? (_localController ??= MyoroCarouselController());
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
