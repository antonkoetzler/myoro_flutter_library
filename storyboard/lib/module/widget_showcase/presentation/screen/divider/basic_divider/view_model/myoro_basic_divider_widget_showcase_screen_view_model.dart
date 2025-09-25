import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroBasicDividerWidgetShowcaseScreen].
final class MyoroBasicDividerWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroBasicDividerWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroBasicDividerWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroBasicDividerThemeExtension] builder.
  MyoroBasicDividerThemeExtension buildStyle(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
    final shortValue = _state.shortValue;
    return themeExtension.copyWith(shortValue: shortValue, shortValueProvided: shortValue != null);
  }
}
