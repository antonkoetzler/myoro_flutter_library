import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_carousel.dart';
part '_widgets/_traversal_button.dart';

/// Slider carousel.
class MyoroCarousel extends StatefulWidget {
  final MyoroCarouselController? controller;
  final MyoroCarouselConfiguration? configuration;

  const MyoroCarousel({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroCarousel]: [controller] (x)or configuration must be provided.',
      );

  @override
  State<MyoroCarousel> createState() => _MyoroCarouselState();
}

final class _MyoroCarouselState extends State<MyoroCarousel> {
  MyoroCarouselController? _localController;
  MyoroCarouselController get _controller {
    return widget.controller ?? (_localController ??= MyoroCarouselController(configuration: widget.configuration!));
  }

  @override
  void didUpdateWidget(covariant MyoroCarousel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != oldWidget.configuration) {
      _controller.state.configuration = widget.configuration!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCarouselThemeExtension>();

    return Stack(
      alignment: Alignment.center,
      children: [
        _Carousel(_controller),
        if (_controller.state.configuration.displayTraversalButtons) ...[
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
