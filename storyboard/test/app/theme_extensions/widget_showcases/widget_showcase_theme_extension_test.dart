import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [WidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = WidgetShowcaseThemeExtension.fake();
  final themeExtension2 = WidgetShowcaseThemeExtension.fake();

  test('WidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      widgetWrapperBackgroundColor:
          themeExtension2.widgetWrapperBackgroundColor,
      widgetWrapperPadding: themeExtension2.widgetWrapperPadding,
      widgetWrapperContentPadding: themeExtension2.widgetWrapperContentPadding,
      widgetWrapperBorderRadius: themeExtension2.widgetWrapperBorderRadius,
      widgetWrapperBorder: themeExtension2.widgetWrapperBorder,
      widgetWrapperAlignment: themeExtension2.widgetWrapperAlignment,
      widgetOptionsMaxWidth: themeExtension2.widgetOptionsMaxWidth,
      widgetOptionsPadding: themeExtension2.widgetOptionsPadding,
      widgetOptionsDividerPadding: themeExtension2.widgetOptionsDividerPadding,
    );
    expect(
      copiedThemeExtension.widgetWrapperBackgroundColor,
      themeExtension2.widgetWrapperBackgroundColor,
    );
    expect(
      copiedThemeExtension.widgetWrapperPadding,
      themeExtension2.widgetWrapperPadding,
    );
    expect(
      copiedThemeExtension.widgetWrapperContentPadding,
      themeExtension2.widgetWrapperContentPadding,
    );
    expect(
      copiedThemeExtension.widgetWrapperBorderRadius,
      themeExtension2.widgetWrapperBorderRadius,
    );
    expect(
      copiedThemeExtension.widgetWrapperBorder,
      themeExtension2.widgetWrapperBorder,
    );
    expect(
      copiedThemeExtension.widgetWrapperAlignment,
      themeExtension2.widgetWrapperAlignment,
    );
    expect(
      copiedThemeExtension.widgetOptionsMaxWidth,
      themeExtension2.widgetOptionsMaxWidth,
    );
    expect(
      copiedThemeExtension.widgetOptionsPadding,
      themeExtension2.widgetOptionsPadding,
    );
    expect(
      copiedThemeExtension.widgetOptionsDividerPadding,
      themeExtension2.widgetOptionsDividerPadding,
    );
  });

  test('WidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.widgetWrapperBackgroundColor,
        Color.lerp(
          themeExtension1.widgetWrapperBackgroundColor,
          themeExtension2.widgetWrapperBackgroundColor,
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
        lerpedThemeExtension.widgetWrapperBorderRadius,
        BorderRadius.lerp(
          themeExtension1.widgetWrapperBorderRadius,
          themeExtension2.widgetWrapperBorderRadius,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.widgetWrapperBorder,
        Border.lerp(
          themeExtension1.widgetWrapperBorder,
          themeExtension2.widgetWrapperBorder,
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
        lerpDouble(
          themeExtension1.widgetOptionsMaxWidth,
          themeExtension2.widgetOptionsMaxWidth,
          i,
        ),
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
}
