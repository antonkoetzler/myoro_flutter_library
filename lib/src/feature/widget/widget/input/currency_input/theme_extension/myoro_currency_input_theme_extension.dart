import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_currency_input_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCurrencyInput].
@immutable
@myoroThemeExtension
class MyoroCurrencyInputThemeExtension extends ThemeExtension<MyoroCurrencyInputThemeExtension>
    with _$MyoroCurrencyInputThemeExtensionMixin
    implements MyoroCurrencyInputStyle {
  /// Default constructor.
  const MyoroCurrencyInputThemeExtension({
    this.border,
    this.underlinedBorder,
    this.outlinedBorder,
    this.noneBorder,
    this.primaryColor,
    this.errorBorderColor,
    this.cursorHeight,
    this.contentPadding,
    this.disabledOpacity,
    this.inputTextStyle,
    this.spacing,
    this.labelTextStyle,
    this.labelBehavior,
    this.suffixButtonMargin,
    this.clearTextButtonIcon,
    this.obscureTextButtonEnabledIcon,
    this.obscureTextButtonDisabledIcon,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.suffixButtonStyle,
    this.currencySymbolButtonStyle,
    this.currencyPrefixPadding,
  });

  /// Fake constructor.
  MyoroCurrencyInputThemeExtension.fake()
    : border = myoroNullableFake<InputBorder>(),
      underlinedBorder = myoroNullableFake<UnderlineInputBorder>(),
      outlinedBorder = myoroNullableFake<OutlineInputBorder>(),
      noneBorder = myoroNullableFake<InputBorder>(),
      primaryColor = myoroNullableFake<Color>(),
      errorBorderColor = myoroNullableFake<Color>(),
      cursorHeight = myoroNullableFake<double>(),
      contentPadding = myoroNullableFake<EdgeInsets>(),
      disabledOpacity = myoroNullableFake<double>(),
      inputTextStyle = myoroNullableFake<TextStyle>(),
      spacing = myoroNullableFake<double>(),
      labelTextStyle = myoroNullableFake<TextStyle>(),
      labelBehavior = myoroNullableFake<FloatingLabelBehavior>(),
      suffixButtonMargin = myoroNullableFake<EdgeInsets>(),
      clearTextButtonIcon = myoroNullableFake<IconData>(),
      obscureTextButtonEnabledIcon = myoroNullableFake<IconData>(),
      obscureTextButtonDisabledIcon = myoroNullableFake<IconData>(),
      suffixIconConstraints = myoroNullableFake<BoxConstraints>(),
      prefixIconConstraints = myoroNullableFake<BoxConstraints>(),
      suffixButtonStyle = myoroNullableFake<MyoroIconTextButtonStyle>(),
      currencySymbolButtonStyle = MyoroIconTextButtonStyle.fake(),
      currencyPrefixPadding = myoroFake<EdgeInsets>();

  MyoroCurrencyInputThemeExtension.builder(
    bool isDarkMode,
    ColorScheme colorScheme,
    TextTheme textTheme,
    MyoroDecorationThemeExtension decorationThemeExtension,
  ) : border = null,
      underlinedBorder = UnderlineInputBorder(
        borderSide: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      ),
      outlinedBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
        borderSide: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      ),
      noneBorder = InputBorder.none,
      primaryColor = colorScheme.primary,
      errorBorderColor = colorScheme.error,
      cursorHeight = kMyoroMultiplier * 5,
      contentPadding = const EdgeInsets.only(
        top: kMyoroMultiplier * 2,
        bottom: kMyoroMultiplier * 2,
        left: kMyoroMultiplier * 2,
        right: kMyoroMultiplier,
      ),
      disabledOpacity = 0.5,
      inputTextStyle = textTheme.bodyMedium!,
      labelTextStyle = textTheme.headlineMedium!,
      labelBehavior = FloatingLabelBehavior.always,
      spacing = kMyoroMultiplier * 2.5,
      suffixButtonMargin = const EdgeInsets.fromLTRB(
        kMyoroMultiplier,
        kMyoroMultiplier,
        kMyoroMultiplier * 1.5,
        kMyoroMultiplier,
      ),
      clearTextButtonIcon = Icons.close,
      obscureTextButtonEnabledIcon = Icons.visibility,
      obscureTextButtonDisabledIcon = Icons.visibility_off,
      suffixIconConstraints = null,
      prefixIconConstraints = null,
      suffixButtonStyle = const MyoroIconTextButtonStyle(
        contentPadding: EdgeInsets.only(
          top: kMyoroMultiplier * 1.2,
          bottom: kMyoroMultiplier * 1.2,
          left: kMyoroMultiplier - 2,
          right: kMyoroMultiplier * 1.2,
        ),
      ),
      currencySymbolButtonStyle = MyoroIconTextButtonStyle(
        textStyle: MyoroTextStyle(style: textTheme.bodySmall!),
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
        backgroundIdleColor: isDarkMode
            ? decorationThemeExtension.primaryBackgroundHoverColor?.darken(0.25)
            : decorationThemeExtension.primaryBackgroundHoverColor?.brighten(0.25),
      ),
      currencyPrefixPadding = const EdgeInsets.only(
        left: kMyoroBorderWidth + kMyoroMultiplier * 1.5,
        right: kMyoroMultiplier,
      );

  /// Custom border.
  @override
  final InputBorder? border;

  /// Border for [MyoroInputStyleEnum.underlined].
  @override
  final UnderlineInputBorder? underlinedBorder;

  /// Border for [MyoroInputStyleEnum.outlined].
  @override
  final OutlineInputBorder? outlinedBorder;

  /// Border of [MyoroInputStyleEnum.none].
  @override
  final InputBorder? noneBorder;

  /// Background color of the input.
  @override
  final Color? primaryColor;

  /// Color of the border when said input's [validation] function returns an error.
  @override
  final Color? errorBorderColor;

  /// Height of the selection cursor.
  @override
  final double? cursorHeight;

  /// [InputDecoration.contentPadding]
  @override
  final EdgeInsets? contentPadding;

  /// Opacity applied when the input is disabled.
  @override
  final double? disabledOpacity;

  /// Text style of the input.
  @override
  final TextStyle? inputTextStyle;

  /// Spacing between the input and the prefix/suffix widgets.
  @override
  final double? spacing;

  /// Text style of the label.
  @override
  final TextStyle? labelTextStyle;

  /// [TextFormField.floatingLabelBehavior]. Used so the label will stay at the top of the
  @override
  final FloatingLabelBehavior? labelBehavior;

  /// Margin of the suffix button.
  @override
  final EdgeInsets? suffixButtonMargin;

  /// [IconData] of the clear text button.
  @override
  final IconData? clearTextButtonIcon;

  /// [IconData] of the obscure text button.
  @override
  final IconData? obscureTextButtonEnabledIcon;

  /// [IconData] of the obscure text button when it is disabled.
  @override
  final IconData? obscureTextButtonDisabledIcon;

  /// [BoxConstraints] of the suffix icon.
  @override
  final BoxConstraints? suffixIconConstraints;

  /// [BoxConstraints] of the prefix icon.
  @override
  final BoxConstraints? prefixIconConstraints;

  /// [MyoroIconTextButtonStyle] of the suffix button.
  @override
  final MyoroIconTextButtonStyle? suffixButtonStyle;

  /// [MyoroIconTextButtonStyle] of the currency prefix [Widget].
  @override
  final MyoroIconTextButtonStyle? currencySymbolButtonStyle;

  /// [EdgeInsets] padding for the currency prefix [Widget].
  @override
  final EdgeInsets? currencyPrefixPadding;

  @override
  MyoroCurrencyInputThemeExtension lerp(covariant MyoroCurrencyInputThemeExtension? other, double t) {
    if (other is! MyoroCurrencyInputThemeExtension) return this;
    final style = MyoroCurrencyInputStyle.lerp(this, other, t);
    return MyoroCurrencyInputThemeExtension(
      border: style.border,
      underlinedBorder: style.underlinedBorder,
      outlinedBorder: style.outlinedBorder,
      noneBorder: style.noneBorder,
      primaryColor: style.primaryColor,
      errorBorderColor: style.errorBorderColor,
      cursorHeight: style.cursorHeight,
      contentPadding: style.contentPadding,
      disabledOpacity: style.disabledOpacity,
      inputTextStyle: style.inputTextStyle,
      spacing: style.spacing,
      labelTextStyle: style.labelTextStyle,
      labelBehavior: style.labelBehavior,
      suffixButtonMargin: style.suffixButtonMargin,
      clearTextButtonIcon: style.clearTextButtonIcon,
      obscureTextButtonEnabledIcon: style.obscureTextButtonEnabledIcon,
      obscureTextButtonDisabledIcon: style.obscureTextButtonDisabledIcon,
      suffixIconConstraints: style.suffixIconConstraints,
      prefixIconConstraints: style.prefixIconConstraints,
      suffixButtonStyle: style.suffixButtonStyle,
      currencySymbolButtonStyle: style.currencySymbolButtonStyle,
      currencyPrefixPadding: style.currencyPrefixPadding,
    );
  }
}
