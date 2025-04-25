import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Slider carousel.
class MyoroCarousel extends StatefulWidget {
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

  const MyoroCarousel({
    super.key,
    this.direction = Axis.horizontal,
    this.displayTraversalButtons = false,
    this.initialItem = 0,
    this.autoplay = false,
    this.autoplayIntervalDuration = kMyoroCarouselAutoplayIntervalDuration,
    required this.items,
  });

  @override
  State<MyoroCarousel> createState() => _MyoroCarouselState();
}

final class _MyoroCarouselState extends State<MyoroCarousel> {
  Axis get _direction => widget.direction;
  bool get _displayTraversalButtons => widget.displayTraversalButtons;
  int get _initialItem => widget.initialItem;
  bool get _autoplay => widget.autoplay;
  Duration get _autoplayIntervalDuration => widget.autoplayIntervalDuration;
  List<Widget> get _items => widget.items;

  final _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroCarouselThemeExtension>();

    return Stack(
      alignment: Alignment.center,
      children: [
        _Carousel(
          _controller,
          _direction,
          _initialItem,
          _autoplay,
          _autoplayIntervalDuration,
          _items,
        ),
        if (_displayTraversalButtons) ...[
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
  final CarouselSliderController _controller;
  final Axis _direction;
  final int _initialItem;
  final bool _autoplay;
  final Duration _autoplayIntervalDuration;
  final List<Widget> _items;

  const _Carousel(
    this._controller,
    this._direction,
    this._initialItem,
    this._autoplay,
    this._autoplayIntervalDuration,
    this._items,
  );

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: _controller,
      items: _items,
      options: CarouselOptions(
        initialPage: _initialItem,
        scrollDirection: _direction,
        autoPlay: _autoplay,
        autoPlayInterval: _autoplayIntervalDuration,
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
            iconConfiguration: MyoroIconTextButtonIconConfiguration(
              icon: _icon,
            ),
            borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
            onTapUp: (_) => _onTapUp(),
          ),
        ),
      ),
    );
  }
}
