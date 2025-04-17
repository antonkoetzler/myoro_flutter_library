part of 'myoro_carousel_widget_showcase_bloc.dart';

final class MyoroCarouselWidgetShowcaseState extends Equatable {
  /// [MyoroCarousel.direction].
  final Axis direction;

  /// [MyoroCarousel.displayTraversalButtons].
  final bool displayTraversalButtons;

  /// [MyoroCarousel.autoplay].
  final bool autoplay;

  /// [MyoroCarousel.autoplayIntervalDuration].
  final Duration autoplayIntervalDuration;

  const MyoroCarouselWidgetShowcaseState({
    this.direction = Axis.horizontal,
    this.displayTraversalButtons = false,
    this.autoplay = true,
    this.autoplayIntervalDuration = kMyoroCarouselAutoplayIntervalDuration,
  });

  MyoroCarouselWidgetShowcaseState copyWith({Axis? direction, bool? displayTraversalButtons, bool? autoplay, Duration? autoplayIntervalDuration}) {
    return MyoroCarouselWidgetShowcaseState(
      direction: direction ?? this.direction,
      displayTraversalButtons: displayTraversalButtons ?? this.displayTraversalButtons,
      autoplay: autoplay ?? this.autoplay,
      autoplayIntervalDuration: autoplayIntervalDuration ?? this.autoplayIntervalDuration,
    );
  }

  @override
  String toString() =>
      'MyoroCarouselWidgetShowcaseState(\n'
      '  direction: $direction,\n'
      '  displayTraversalButtons: $displayTraversalButtons,\n'
      '  autoplay: $autoplay,\n'
      '  autoplayIntervalDuration: $autoplayIntervalDuration,\n'
      ');';

  @override
  List<Object?> get props {
    return [direction, displayTraversalButtons, autoplay, autoplayIntervalDuration];
  }
}
