import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_bar_input_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSearchBarInput].
@immutable
@myoroThemeExtension
class MyoroSearchBarInputThemeExtension extends ThemeExtension<MyoroSearchBarInputThemeExtension>
    with _$MyoroSearchBarInputThemeExtensionMixin
    implements MyoroSearchBarInputStyle {
  /// Default constructor.
  const MyoroSearchBarInputThemeExtension({
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
    this.searchBarIconStyle,
  });

  /// Fake constructor.
  MyoroSearchBarInputThemeExtension.fake()
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
      searchBarIconStyle = myoroNullableFake<MyoroIconStyle>();

  /// Builder constructor.
  MyoroSearchBarInputThemeExtension.builder(ColorScheme colorScheme)
    : border = null,
      underlinedBorder = null,
      outlinedBorder = null,
      noneBorder = null,
      primaryColor = null,
      errorBorderColor = null,
      cursorHeight = null,
      contentPadding = null,
      disabledOpacity = null,
      inputTextStyle = null,
      spacing = null,
      labelTextStyle = null,
      labelBehavior = null,
      suffixButtonMargin = null,
      clearTextButtonIcon = null,
      obscureTextButtonEnabledIcon = null,
      obscureTextButtonDisabledIcon = null,
      suffixIconConstraints = null,
      prefixIconConstraints = null,
      suffixButtonStyle = null,
      searchBarIconStyle = MyoroIconStyle(color: colorScheme.onPrimary, size: kMyoroMultiplier * 10);

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

  /// [MyoroIconStyle] of the search bar icon.
  @override
  final MyoroIconStyle? searchBarIconStyle;

  /// Lerp function.
  @override
  MyoroSearchBarInputThemeExtension lerp(covariant MyoroSearchBarInputThemeExtension? other, double t) {
    if (other is! MyoroSearchBarInputThemeExtension) return this;
    final style = MyoroSearchBarInputStyle.lerp(this, other, t);
    return MyoroSearchBarInputThemeExtension(
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
      searchBarIconStyle: style.searchBarIconStyle,
    );
  }
}
