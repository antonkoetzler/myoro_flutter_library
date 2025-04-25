import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final themeExtension1 = WidgetShowcaseThemeExtension.fake();
  final themeExtension2 = WidgetShowcaseThemeExtension.fake();

  test('WidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        widgetWrapperDecoration: themeExtension2.widgetWrapperDecoration,
        widgetWrapperPadding: themeExtension2.widgetWrapperPadding,
        widgetWrapperContentPadding: themeExtension2.widgetWrapperContentPadding,
        widgetWrapperAlignment: themeExtension2.widgetWrapperAlignment,
        previousPageButtonIcon: themeExtension2.previousPageButtonIcon,
        previousPageButtonPadding: themeExtension2.previousPageButtonPadding,
        previousPageButtonOffset: themeExtension2.previousPageButtonOffset,
        widgetOptionsMaxWidth: themeExtension2.widgetOptionsMaxWidth,
        widgetOptionsPadding: themeExtension2.widgetOptionsPadding,
        widgetOptionsDividerPadding: themeExtension2.widgetOptionsDividerPadding,
      ),
      themeExtension2,
    );
  });

  test('WidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.widgetWrapperDecoration,
        BoxDecoration.lerp(
          themeExtension1.widgetWrapperDecoration,
          themeExtension2.widgetWrapperDecoration,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetWrapperPadding,
        EdgeInsets.lerp(
          themeExtension1.widgetWrapperPadding,
          themeExtension2.widgetWrapperPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetWrapperContentPadding,
        EdgeInsets.lerp(
          themeExtension1.widgetWrapperContentPadding,
          themeExtension2.widgetWrapperContentPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetWrapperAlignment,
        Alignment.lerp(
          themeExtension1.widgetWrapperAlignment,
          themeExtension2.widgetWrapperAlignment,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.previousPageButtonIcon,
        myoroLerp(
          themeExtension1.previousPageButtonIcon,
          themeExtension2.previousPageButtonIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.previousPageButtonPadding,
        EdgeInsets.lerp(
          themeExtension1.previousPageButtonPadding,
          themeExtension2.previousPageButtonPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.previousPageButtonOffset,
        lerpDouble(
          themeExtension1.previousPageButtonOffset,
          themeExtension2.previousPageButtonOffset,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetOptionsMaxWidth,
        lerpDouble(themeExtension1.widgetOptionsMaxWidth, themeExtension2.widgetOptionsMaxWidth, i),
      );
      expect(
        lerpedThemeExtension.widgetOptionsPadding,
        EdgeInsets.lerp(
          themeExtension1.widgetOptionsPadding,
          themeExtension2.widgetOptionsPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetOptionsDividerPadding,
        EdgeInsets.lerp(
          themeExtension1.widgetOptionsDividerPadding,
          themeExtension2.widgetOptionsDividerPadding,
          i,
        ),
      );
    }
  });

  test('WidgetShowcaseThemeExtension.toString', () {});
}
