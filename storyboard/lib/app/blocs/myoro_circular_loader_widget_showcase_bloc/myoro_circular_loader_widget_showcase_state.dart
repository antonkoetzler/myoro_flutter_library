part of 'myoro_circular_loader_widget_showcase_bloc.dart';

final class MyoroCircularLoaderWidgetShowcaseState extends Equatable {
  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Size of the [MyoroCircularLoader].
  final double size;

  const MyoroCircularLoaderWidgetShowcaseState({
    this.color,
    required this.size,
  });

  MyoroCircularLoaderWidgetShowcaseState copyWith({
    Color? color,
    bool colorEnabled = true,
    double? size,
  }) {
    return MyoroCircularLoaderWidgetShowcaseState(
      color: colorEnabled ? (color ?? this.color) : null,
      size: size ?? this.size,
    );
  }

  @override
  String toString() => ''
      'MyoroCircularLoaderWidgetShowcaseState(\n'
      '  color: $color,\n'
      '  size: $size,\n'
      ');';

  @override
  List<Object?> get props {
    return [color, size];
  }
}
