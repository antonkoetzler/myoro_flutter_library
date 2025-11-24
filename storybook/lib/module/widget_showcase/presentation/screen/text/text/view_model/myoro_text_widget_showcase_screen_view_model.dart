import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_text_widget_showcase_screen_state.dart';

/// View model of [MyoroTextWidgetShowcaseScreen].
final class MyoroTextWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroTextWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroTextWidgetShowcaseScreenState get state {
    return _state;
  }

  /// [MyoroTextStyle] of the [MyoroText].
  MyoroTextStyle? get style {
    final maxLines = state.maxLines;
    final overflow = state.overflow;
    final alignment = state.alignment;
    final textStyle = state.textStyle;

    if (maxLines == null && overflow == null && alignment == null && textStyle == null) {
      return null;
    }

    return MyoroTextStyle(
      maxLines: maxLines ?? MyoroTextStyle.maxLinesDefaultValue,
      overflow: overflow ?? MyoroTextStyle.overflowDefaultValue,
      alignment: alignment ?? MyoroTextStyle.alignmentDefaultValue,
      style: textStyle,
    );
  }
}
