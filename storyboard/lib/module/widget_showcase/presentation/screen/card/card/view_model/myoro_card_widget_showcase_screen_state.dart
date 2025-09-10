import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroCardWidgetShowcaseScreenViewModel].
final class MyoroCardWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroCard.title]
  String _title = kMyoroEmptyString;

  /// [_title] getter.
  String get title => _title;

  /// [_title] setter.
  set title(String title) {
    _title = title;
    notifyListeners();
  }

  /// [MyoroCardThemeExtension.textStyle]
  TextStyle? _titleTextStyle;

  /// [_titleTextStyle] getter.
  TextStyle? get titleTextStyle => _titleTextStyle;

  /// [_titleTextStyle] setter.
  set titleTextStyle(TextStyle? titleTextStyle) {
    _titleTextStyle = titleTextStyle;
    notifyListeners();
  }

  /// [MyoroCardThemeExtension.padding]
  EdgeInsets? _padding;

  /// [_padding] getter.
  EdgeInsets? get padding => _padding;

  /// [_padding] setter.
  set padding(EdgeInsets? padding) {
    _padding = padding;
    notifyListeners();
  }

  /// [MyoroCardThemeExtension.constraints]
  BoxConstraints _constraints = const BoxConstraints();

  /// [_constraints] getter.
  BoxConstraints get constraints => _constraints;

  /// [_constraints] setter.
  set constraints(BoxConstraints constraints) {
    _constraints = constraints;
    notifyListeners();
  }
}
