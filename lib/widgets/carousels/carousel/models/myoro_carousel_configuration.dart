part of '../myoro_carousel.dart';

/// Configuration of [MyoroCarousel].
class MyoroCarouselConfiguration extends Equatable {
  static const directionDefaultValue = Axis.horizontal;
  static const displayTraversalButtonsDefaultValue = false;
  static const initialItemDefaultValue = 0;
  static const autoplayDefaultValue = false;
  static const autoplayIntervalDurationDefaultValue = Duration(seconds: 3);

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

  MyoroCarouselConfiguration copyWith({
    Axis? direction,
    bool? displayTraversalButtons,
    int? initialItem,
    bool? autoplay,
    Duration? autoplayIntervalDuration,
    List<Widget>? items,
  }) {
    return MyoroCarouselConfiguration(
      direction: direction ?? this.direction,
      displayTraversalButtons: displayTraversalButtons ?? this.displayTraversalButtons,
      initialItem: initialItem ?? this.initialItem,
      autoplay: autoplay ?? this.autoplay,
      autoplayIntervalDuration: autoplayIntervalDuration ?? this.autoplayIntervalDuration,
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props {
    return [direction, displayTraversalButtons, initialItem, autoplay, autoplayIntervalDuration, items];
  }

  @override
  String toString() =>
      'MyoroCarouselConfiguration(\n'
      '  direction: $direction,\n'
      '  displayTraversalButtons: $displayTraversalButtons,\n'
      '  initialItem: $initialItem,\n'
      '  autoplay: $autoplay,\n'
      '  autoplayIntervalDuration: $autoplayIntervalDuration,\n'
      '  items: $items,\n'
      ');';
}
