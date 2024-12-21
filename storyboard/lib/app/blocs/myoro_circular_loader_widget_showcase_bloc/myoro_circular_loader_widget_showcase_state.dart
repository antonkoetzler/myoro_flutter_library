part of 'myoro_circular_loader_widget_showcase_bloc.dart';

final class MyoroCircularLoaderWidgetShowcaseState extends Equatable {
  /// Color of the [MyoroCircularLoader].
  final Color? color;
  final bool colorEnabled;

  /// Size of the [MyoroCircularLoader].
  final double size;

  const MyoroCircularLoaderWidgetShowcaseState({
    this.color,
    this.colorEnabled = false,
    required this.size,
  });

  MyoroCircularLoaderWidgetShowcaseState copyWith({
    Color? color,
    bool? colorEnabled,
    double? size,
  }) {
    colorEnabled = colorEnabled ?? this.colorEnabled;

    return MyoroCircularLoaderWidgetShowcaseState(
      color: colorEnabled ? (color ?? this.color) : null,
      colorEnabled: colorEnabled,
      size: size ?? this.size,
    );
  }

  @override
  String toString() => ''
      'MyoroCircularLoaderWidgetShowcaseState(\n'
      '  color: $color,\n'
      '  colorEnabled: $colorEnabled,\n'
      '  size: $size,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      color,
      colorEnabled,
      size,
    ];
  }
}
