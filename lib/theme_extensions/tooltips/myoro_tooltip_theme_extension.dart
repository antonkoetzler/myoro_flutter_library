part of '../../widgets/tooltips/myoro_tooltip.dart';

/// [ThemeExtension] for [MyoroTooltip].
@immutable
class MyoroTooltipThemeExtension
    extends ThemeExtension<MyoroTooltipThemeExtension> {
  /// [Tooltip.margin].
  final EdgeInsets margin;

  const MyoroTooltipThemeExtension({required this.margin});

  MyoroTooltipThemeExtension.fake() : margin = myoroFake<EdgeInsets>();

  const MyoroTooltipThemeExtension.builder() : margin = EdgeInsets.zero;

  @override
  MyoroTooltipThemeExtension copyWith({EdgeInsets? margin}) {
    return MyoroTooltipThemeExtension(margin: margin ?? this.margin);
  }

  @override
  MyoroTooltipThemeExtension lerp(
    covariant ThemeExtension<MyoroTooltipThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTooltipThemeExtension) return this;
    return copyWith(margin: EdgeInsets.lerp(margin, other.margin, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTooltipThemeExtension &&
        other.runtimeType == runtimeType &&
        other.margin == margin;
  }

  @override
  int get hashCode {
    return Object.hashAll([margin]);
  }

  @override
  String toString() =>
      'MyoroTooltipThemeExtension(\n'
      '  margin: $margin,\n'
      ');';
}
