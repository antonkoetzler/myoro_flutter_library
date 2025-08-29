import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_accordion_style.g.dart';

/// Style model of [MyoroAccordion].
@immutable
@myoroModel
final class MyoroAccordionStyle with _$MyoroAccordionStyleMixin {
  const MyoroAccordionStyle({required this.scrollbarAlwaysVisible});

  // coverage:ignore-start
  MyoroAccordionStyle.fake() : scrollbarAlwaysVisible = faker.randomGenerator.boolean();
  // coverage:ignore-end

  /// [Scrollbar.thumbVisibility] of the accordion listing.
  final bool scrollbarAlwaysVisible;
}
