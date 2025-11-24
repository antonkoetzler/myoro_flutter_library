import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_tag_widget_showcase_screen_state.dart';

/// View model of [MyoroTagWidgetShowcaseScreen].
final class MyoroTagWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroTagWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroTagWidgetShowcaseScreenState get state {
    return _state;
  }

  /// [MyoroTagStyle] of the [MyoroTag].
  MyoroTagStyle get style {
    final backgroundColor = state.backgroundColor;
    final contentPadding = state.contentPadding;
    final borderRadius = state.borderRadius;
    final border = state.border;
    final spacing = state.spacing;
    final iconSize = state.iconSize;
    final textStyle = state.textStyle;

    return MyoroTagStyle(
      backgroundColor: backgroundColor,
      contentPadding: contentPadding,
      borderRadius: borderRadius,
      border: border,
      spacing: spacing,
      iconSize: iconSize,
      textStyle: textStyle,
    );
  }
}
