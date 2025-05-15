part of '../../widgets/forms/myoro_form.dart';

/// [ThemeExtension] for [MyoroForm].
@immutable
class MyoroFormThemeExtension extends ThemeExtension<MyoroFormThemeExtension> {
  const MyoroFormThemeExtension();

  const MyoroFormThemeExtension.builder();

  @override
  MyoroFormThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroFormThemeExtension> lerp(
    covariant ThemeExtension<MyoroFormThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFormThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroFormThemeExtension(\n'
      ');';
}
