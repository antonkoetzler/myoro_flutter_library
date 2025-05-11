import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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

  final _controller = CarouselSliderController();

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
            child: _TraversalButton(
              Alignment.centerRight,
              themeExtension.nextItemButtonIcon,
              () => _controller.nextPage(),
            ),
          ),
        ],
      ],
    );
  }
}

final class _Carousel extends StatelessWidget {
  final MyoroCarouselConfiguration _configuration;
  final CarouselSliderController _controller;

  const _Carousel(this._configuration, this._controller);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _controller,
      items: _configuration.items,
      options: CarouselOptions(
        initialPage: _configuration.initialItem,
        scrollDirection: _configuration.direction,
        autoPlay: _configuration.autoplay,
        autoPlayInterval: _configuration.autoplayIntervalDuration,
      ),
    );
  }
}

final class _TraversalButton extends StatelessWidget {
  final Alignment _alignment;
  final IconData _icon;
  final VoidCallback _onTapUp;

  const _TraversalButton(this._alignment, this._icon, this._onTapUp);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: _alignment,
      child: IntrinsicWidth(
        child: MyoroIconTextButton(
          configuration: MyoroIconTextButtonConfiguration(
            buttonConfiguration: MyoroButtonConfiguration(
              borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
              onTapUp: (_) => _onTapUp(),
            ),
            iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: _icon),
          ),
        ),
      ),
    );
  }
}
