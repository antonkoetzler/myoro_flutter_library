import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
        widgetOptionsMaxWidth: themeExtension2.widgetOptionsMaxWidth,
        widgetOptionsPadding: themeExtension2.widgetOptionsPadding,
        dividerPadding: themeExtension2.dividerPadding,
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
        lerpedThemeExtension.dividerPadding,
        EdgeInsets.lerp(themeExtension1.dividerPadding, themeExtension2.dividerPadding, i),
      );
    }
  });

  test('WidgetShowcaseThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'WidgetShowcaseThemeExtension(\n'
      '  widgetWrapperPadding: ${themeExtension1.widgetWrapperPadding},\n'
      '  widgetWrapperContentPadding: ${themeExtension1.widgetWrapperContentPadding},\n'
      '  widgetWrapperAlignment: ${themeExtension1.widgetWrapperAlignment},\n'
      '  widgetOptionsMaxWidth: ${themeExtension1.widgetOptionsMaxWidth},\n'
      '  widgetOptionsPadding: ${themeExtension1.widgetOptionsPadding},\n'
      '  dividerPadding: ${themeExtension1.dividerPadding},\n'
      ');',
    );
  });
}
