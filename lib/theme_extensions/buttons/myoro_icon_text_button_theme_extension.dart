part of '../../widgets/buttons/myoro_icon_text_button.dart';

/// [ThemeExtension] of [MyoroIconTextButton].
@immutable
class MyoroIconTextButtonThemeExtension
    extends ThemeExtension<MyoroIconTextButtonThemeExtension> {
  /// [TextStyle] of [_Text].
  final TextStyle textStyle;

  const MyoroIconTextButtonThemeExtension({required this.textStyle});

  MyoroIconTextButtonThemeExtension.fake()
    : textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroIconTextButtonThemeExtension.builder(TextTheme textTheme)
    : textStyle = textTheme.bodyMedium!;

  @override
  MyoroIconTextButtonThemeExtension copyWith({TextStyle? textStyle}) {
    return MyoroIconTextButtonThemeExtension(
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  MyoroIconTextButtonThemeExtension lerp(
    covariant ThemeExtension<MyoroIconTextButtonThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;
    return copyWith(textStyle: TextStyle.lerp(textStyle, other.textStyle, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == textStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([textStyle]);
  }

  @override
  String toString() =>
      'MyoroIconTextButtonThemeExtension(\n'
      '  textStyle: $textStyle,\n'
      ');';
}
