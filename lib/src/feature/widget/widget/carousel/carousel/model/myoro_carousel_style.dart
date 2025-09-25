import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_carousel_style.g.dart';

/// Style model of [MyoroCarousel].
@immutable
@myoroModel
class MyoroCarouselStyle with _$MyoroCarouselStyleMixin {
  const MyoroCarouselStyle({this.previousItemButtonIcon, this.nextItemButtonIcon});

  /// Icon of the previous item [_TraversalButton] in [_TraversalButtons].
  final IconData? previousItemButtonIcon;

  /// Icon of the next item button in [_TraversalButtons].
  final IconData? nextItemButtonIcon;

  /// Copy with.
  MyoroCarouselStyle copyWith({
    IconData? previousItemButtonIcon,
    bool previousItemButtonIconProvided = true,
    IconData? nextItemButtonIcon,
    bool nextItemButtonIconProvided = true,
  }) {
    return MyoroCarouselStyle(
      previousItemButtonIcon: previousItemButtonIconProvided
          ? (previousItemButtonIcon ?? this.previousItemButtonIcon)
          : null,
      nextItemButtonIcon: nextItemButtonIconProvided ? (nextItemButtonIcon ?? this.nextItemButtonIcon) : null,
    );
  }
}
