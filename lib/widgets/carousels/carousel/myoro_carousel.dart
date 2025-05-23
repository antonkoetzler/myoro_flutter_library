import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_carousel.dart';
part '_widgets/_traversal_button.dart';

/// Slider carousel.
class MyoroCarousel extends StatefulWidget {
  /// Configuration.
  final MyoroCarouselConfiguration configuration;

  const MyoroCarousel({super.key, required this.configuration});

  @override
  State<MyoroCarousel> createState() => _MyoroCarouselState();
}

final class _MyoroCarouselState extends State<MyoroCarousel> {
  MyoroCarouselConfiguration get _configuration => widget.configuration;

  late final _controller = MyoroCarouselController(_configuration);
  CarouselSliderController get _carouselSliderController => _controller.carouselSliderController;

  @override
  void didUpdateWidget(covariant MyoroCarousel oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.configuration;
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCarouselThemeExtension>();

    return Stack(
      alignment: Alignment.center,
      children: [
        _Carousel(_controller),
        if (_configuration.displayTraversalButtons) ...[
          Positioned(
            child: _TraversalButton(
              Alignment.centerLeft,
              themeExtension.previousItemButtonIcon,
              _carouselSliderController.previousPage,
            ),
          ),
          Positioned(
            child: _TraversalButton(
              Alignment.centerRight,
              themeExtension.nextItemButtonIcon,
              _carouselSliderController.nextPage,
            ),
          ),
        ],
      ],
    );
  }
}
