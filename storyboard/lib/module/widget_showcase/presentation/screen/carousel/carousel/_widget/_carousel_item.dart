part of '../myoro_carousel_widget_showcase.dart';

/// Item of the [MyoroCarousel] in [_Widget].
final class _CarouselItem extends StatelessWidget {
  const _CarouselItem(this._imagePath);

  /// Path of the item's image.
  final String _imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_imagePath, width: 300, fit: BoxFit.contain);
  }
}
