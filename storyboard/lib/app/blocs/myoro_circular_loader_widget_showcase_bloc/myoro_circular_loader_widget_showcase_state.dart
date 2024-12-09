part of 'myoro_circular_loader_widget_showcase_bloc.dart';

final class MyoroCircularLoaderWidgetShowcaseState extends Equatable {
  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Size of the [MyoroCircularLoader].
  final double? size;

  const MyoroCircularLoaderWidgetShowcaseState({
    this.color,
    this.size,
  });

  MyoroCircularLoaderWidgetShowcaseState copyWith({
    Color? color,
    double? size,
  }) {
    return MyoroCircularLoaderWidgetShowcaseState(
      color: color,
      size: size,
    );
  }

  @override
  String toString() => ''
      'MyoroCircularLoaderWidgetShowcaseState(\n'
      '  color: $color,\n'
      '  size: $size,\n'
      ');';

  @override
  List<Object?> get props => [color, size];
}
