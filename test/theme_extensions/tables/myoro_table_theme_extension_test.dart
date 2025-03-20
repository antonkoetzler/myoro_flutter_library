import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTableThemeExtension].
void main() {
  late final MyoroTableThemeExtension themeExtension1;
  late final MyoroTableThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroTableThemeExtension.fake();
    themeExtension2 = MyoroTableThemeExtension.fake();
  });

  test('MyoroTableThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      decoration: themeExtension2.decoration,
      titleRowHeight: themeExtension2.titleRowHeight,
      titleRowCellMinWidth: themeExtension2.titleRowCellMinWidth,
      contentPadding: themeExtension2.contentPadding,
      columnSpacing: themeExtension2.columnSpacing,
      tableFooterSpacing: themeExtension2.tableFooterSpacing,
      emptyMessageTextStyle: themeExtension2.emptyMessageTextStyle,
      titleTextStyle: themeExtension2.titleTextStyle,
      errorMessageHeaderTextStyle: themeExtension2.errorMessageHeaderTextStyle,
      errorMessageErrorTextStyle: themeExtension2.errorMessageErrorTextStyle,
      messageSpacing: themeExtension2.messageSpacing,
      buttonConfiguration: themeExtension2.buttonConfiguration,
      footerSpacing: themeExtension2.footerSpacing,
      titleColumnSpacing: themeExtension2.titleColumnSpacing,
      rowsCellSpacing: themeExtension2.rowsCellSpacing,
      rowsButtonConfiguration: themeExtension2.rowsButtonConfiguration,
    );
    expect(copiedThemeExtension.decoration, themeExtension2.decoration);
    expect(copiedThemeExtension.titleRowHeight, themeExtension2.titleRowHeight);
    expect(
      copiedThemeExtension.titleRowCellMinWidth,
      themeExtension2.titleRowCellMinWidth,
    );
    expect(copiedThemeExtension.contentPadding, themeExtension2.contentPadding);
    expect(copiedThemeExtension.columnSpacing, themeExtension2.columnSpacing);
    expect(
      copiedThemeExtension.tableFooterSpacing,
      themeExtension2.tableFooterSpacing,
    );
    expect(
      copiedThemeExtension.emptyMessageTextStyle,
      themeExtension2.emptyMessageTextStyle,
    );
    expect(copiedThemeExtension.titleTextStyle, themeExtension2.titleTextStyle);
    expect(
      copiedThemeExtension.errorMessageHeaderTextStyle,
      themeExtension2.errorMessageHeaderTextStyle,
    );
    expect(
      copiedThemeExtension.errorMessageErrorTextStyle,
      themeExtension2.errorMessageErrorTextStyle,
    );
    expect(copiedThemeExtension.messageSpacing, themeExtension2.messageSpacing);
    expect(
      copiedThemeExtension.buttonConfiguration,
      themeExtension2.buttonConfiguration,
    );
    expect(copiedThemeExtension.footerSpacing, themeExtension2.footerSpacing);
    expect(
      copiedThemeExtension.titleColumnSpacing,
      themeExtension2.titleColumnSpacing,
    );
    expect(
      copiedThemeExtension.rowsCellSpacing,
      themeExtension2.rowsCellSpacing,
    );
    expect(
      copiedThemeExtension.rowsButtonConfiguration,
      themeExtension2.rowsButtonConfiguration,
    );
  });

  test('MyoroTableThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.decoration,
        BoxDecoration.lerp(
          themeExtension1.decoration,
          themeExtension2.decoration,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.titleRowHeight,
        lerpDouble(
          themeExtension1.titleRowHeight,
          themeExtension2.titleRowHeight,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.titleRowCellMinWidth,
        lerpDouble(
          themeExtension1.titleRowCellMinWidth,
          themeExtension2.titleRowCellMinWidth,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.contentPadding,
        EdgeInsets.lerp(
          themeExtension1.contentPadding,
          themeExtension2.contentPadding,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.columnSpacing,
        lerpDouble(
          themeExtension1.columnSpacing,
          themeExtension2.columnSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.tableFooterSpacing,
        lerpDouble(
          themeExtension1.tableFooterSpacing,
          themeExtension2.tableFooterSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.emptyMessageTextStyle,
        TextStyle.lerp(
          themeExtension1.emptyMessageTextStyle,
          themeExtension2.emptyMessageTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.titleTextStyle,
        TextStyle.lerp(
          themeExtension1.titleTextStyle,
          themeExtension2.titleTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.errorMessageHeaderTextStyle,
        TextStyle.lerp(
          themeExtension1.errorMessageHeaderTextStyle,
          themeExtension2.errorMessageHeaderTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.errorMessageErrorTextStyle,
        TextStyle.lerp(
          themeExtension1.errorMessageErrorTextStyle,
          themeExtension2.errorMessageErrorTextStyle,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.messageSpacing,
        lerpDouble(
          themeExtension1.messageSpacing,
          themeExtension2.messageSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.buttonConfiguration,
        MyoroHoverButtonConfiguration.lerp(
          themeExtension1.buttonConfiguration,
          themeExtension2.buttonConfiguration,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.footerSpacing,
        lerpDouble(
          themeExtension1.footerSpacing,
          themeExtension2.footerSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.titleColumnSpacing,
        lerpDouble(
          themeExtension1.titleColumnSpacing,
          themeExtension2.titleColumnSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.rowsCellSpacing,
        lerpDouble(
          themeExtension1.rowsCellSpacing,
          themeExtension2.rowsCellSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.rowsButtonConfiguration,
        MyoroHoverButtonConfiguration.lerp(
          themeExtension1.rowsButtonConfiguration,
          themeExtension2.rowsButtonConfiguration,
          i,
        ),
      );
    }
  });
}
