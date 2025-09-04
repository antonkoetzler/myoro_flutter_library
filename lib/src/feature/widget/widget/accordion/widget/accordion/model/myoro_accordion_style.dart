import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_style.g.dart';

/// Style model of [MyoroAccordion].
@immutable
@myoroModel
final class MyoroAccordionStyle with _$MyoroAccordionStyleMixin {
  static const thumbVisibilityDefaultValue = false;

  const MyoroAccordionStyle({this.thumbVisibility = thumbVisibilityDefaultValue});

  /// [Scrollbar.thumb
  final bool thumbVisibility;

  MyoroAccordionStyle copyWith({bool? thumbVisibility}) {
    return MyoroAccordionStyle(thumbVisibility: thumbVisibility ?? this.thumbVisibility);
  }
}
