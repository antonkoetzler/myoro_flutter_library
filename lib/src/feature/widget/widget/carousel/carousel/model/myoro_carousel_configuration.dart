import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_carousel_configuration.g.dart';

/// Configuration of [MyoroCarousel].
@immutable
@myoroModel
class MyoroCarouselConfiguration with _$MyoroCarouselConfigurationMixin {
  static const directionDefaultValue = Axis.horizontal;
  static const displayTraversalButtonsDefaultValue = false;
  static const initialItemDefaultValue = 0;
  static const autoplayDefaultValue = false;
  static const autoplayIntervalDurationDefaultValue = Duration(seconds: 3);

  const MyoroCarouselConfiguration({
    this.direction = directionDefaultValue,
    this.displayTraversalButtons = displayTraversalButtonsDefaultValue,
    this.initialItem = initialItemDefaultValue,
    this.autoplay = autoplayDefaultValue,
    this.autoplayIntervalDuration = autoplayIntervalDurationDefaultValue,
    required this.items,
  }) : assert(items.length > 0, '[MyoroCarouselConfiguration]: [items] cannot be empty.');

  factory MyoroCarouselConfiguration.fake() {
    final List<Widget> items = List.generate(faker.randomGenerator.integer(10, min: 1), (_) => const SizedBox.shrink());

    return MyoroCarouselConfiguration(
      direction: myoroFake<Axis>(),
      displayTraversalButtons: faker.randomGenerator.boolean(),
      initialItem: faker.randomGenerator.integer(items.length),
      autoplay: faker.randomGenerator.boolean(),
      autoplayIntervalDuration: myoroFake<Duration>(),
      items: items,
    );
  }

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
}
