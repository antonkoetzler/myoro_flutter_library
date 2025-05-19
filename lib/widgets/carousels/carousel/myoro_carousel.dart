import 'package:carousel_slider/carousel_slider.dart';
import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_carousel.dart';
part '_widgets/_traversal_button.dart';
part 'controller/myoro_carousel_controller.dart';
part 'controller/myoro_carousel_controller_impl.dart';
part 'models/myoro_carousel_configuration.dart';
part 'myoro_carousel_theme_extension.dart';

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

  final _controller = MyoroCarouselControllerImpl();
  CarouselSliderController get _carouselController => _controller._carouselController;

  @override
  void initState() {
    super.initState();
    _controller._configuration = _configuration;
  }

  @override
  void didUpdateWidget(covariant MyoroCarousel oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller._configuration = _configuration;
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
              _carouselController.previousPage,
            ),
          ),
          Positioned(
            child: _TraversalButton(
              Alignment.centerRight,
              themeExtension.nextItemButtonIcon,
              _carouselController.nextPage,
            ),
          ),
        ],
      ],
    );
  }
}
