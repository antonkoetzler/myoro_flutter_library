import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_carousel_style.g.dart';

/// Style model of [MyoroCarousel].
@immutable
@myoroModel
class MyoroCarouselStyle with _$MyoroCarouselStyleMixin {
  static MyoroCarouselStyle lerp(MyoroCarouselStyle? a, MyoroCarouselStyle? b, double t) {
    return MyoroCarouselStyle(
      previousItemButtonIcon: myoroFallbackLerp(
        a?.previousItemButtonIcon,
        b?.previousItemButtonIcon,
        t,
      ),
      nextItemButtonIcon: myoroFallbackLerp(a?.nextItemButtonIcon, b?.nextItemButtonIcon, t),
    );
  }

  const MyoroCarouselStyle({this.previousItemButtonIcon, this.nextItemButtonIcon});

  /// Icon of the previous item [_TraversalButton] in [_TraversalButtons].
  final IconData? previousItemButtonIcon;

  /// Icon of the next item button in [_TraversalButtons].
  final IconData? nextItemButtonIcon;
}
