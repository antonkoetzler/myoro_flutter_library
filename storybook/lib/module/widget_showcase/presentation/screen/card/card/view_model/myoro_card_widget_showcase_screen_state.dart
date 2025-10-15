import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// State of [MyoroCardWidgetShowcaseScreenViewModel].
final class MyoroCardWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroCard.title]
  String _title = kMyoroEmptyString;

  /// [MyoroCardThemeExtension.textStyle]
  TextStyle? _titleTextStyle;

  /// [MyoroCardThemeExtension.padding]
  EdgeInsets? _padding;

  /// [MyoroCardThemeExtension.constraints]
  BoxConstraints? _constraints;

  /// [MyoroCardThemeExtension.backgroundColor]
  Color? _backgroundColor;

  /// [MyoroCardThemeExtension.border]
  Border? _border;

  /// [MyoroCardThemeExtension.borderRadius]
  BorderRadius? _borderRadius;

  /// [MyoroCardThemeExtension.titleCardSpacing]
  double? _titleCardSpacing;

  /// [_title] getter.
  String get title => _title;

  /// [_titleTextStyle] getter.
  TextStyle? get titleTextStyle => _titleTextStyle;

  /// [_padding] getter.
  EdgeInsets? get padding => _padding;

  /// [_constraints] getter.
  BoxConstraints? get constraints => _constraints;

  /// [_backgroundColor] getter.
  Color? get backgroundColor => _backgroundColor;

  /// [_border] getter.
  Border? get border => _border;

  /// [_borderRadius] getter.
  BorderRadius? get borderRadius => _borderRadius;

  /// [_titleCardSpacing] getter.
  double? get titleCardSpacing => _titleCardSpacing;

  /// [_title] setter.
  set title(String title) {
    _title = title;
    notifyListeners();
  }

  /// [_titleTextStyle] setter.
  set titleTextStyle(TextStyle? titleTextStyle) {
    _titleTextStyle = titleTextStyle;
    notifyListeners();
  }

  /// [_padding] setter.
  set padding(EdgeInsets? padding) {
    _padding = padding;
    notifyListeners();
  }

  /// [_constraints] setter.
  set constraints(BoxConstraints? constraints) {
    _constraints = constraints;
    notifyListeners();
  }

  /// [_backgroundColor] setter.
  set backgroundColor(Color? backgroundColor) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }

  /// [_border] setter.
  set border(Border? border) {
    _border = border;
    notifyListeners();
  }

  /// [_borderRadius] setter.
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [_titleCardSpacing] setter.
  set titleCardSpacing(double? titleCardSpacing) {
    _titleCardSpacing = titleCardSpacing;
    notifyListeners();
  }
}
