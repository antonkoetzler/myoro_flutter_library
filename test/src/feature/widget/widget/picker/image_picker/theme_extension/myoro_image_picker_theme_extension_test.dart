import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroImagePickerThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroImagePickerThemeExtension.builder(colorScheme);
    expect(themeExtension.borderRadius, BorderRadius.circular(kMyoroBorderRadiusLength));
    expect(themeExtension.overlayCursor, SystemMouseCursors.click);
    expect(
      themeExtension.overlayIdleBackgroundColor,
      colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 2 / 100),
    );
    expect(
      themeExtension.overlayHoverBackgroundColor,
      colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 4 / 100),
    );
    expect(
      themeExtension.overlayTapBackgroundColor,
      colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 6 / 100),
    );
    expect(
      themeExtension.overlayUnselectedImageStateIconConfiguration,
      const MyoroIconConfiguration(icon: Icons.upload, size: kMyoroMultiplier * 20),
    );
    expect(
      themeExtension.selectionTypeModalConstraints,
      const BoxConstraints(maxWidth: kMyoroMultiplier * 58, maxHeight: kMyoroMultiplier * 50),
    );
    expect(themeExtension.selectionTypeModalSpacing, kMyoroMultiplier * 2);
    expect(themeExtension.selectionTypeModalButtonCameraIcon, Icons.camera);
    expect(themeExtension.selectionTypeModalButtonGalleryIcon, Icons.browse_gallery);
  });

  test('MyoroImagePickerThemeExtension.lerp', () {
    final themeExtension1 = MyoroImagePickerThemeExtension.fake();
    final themeExtension2 = MyoroImagePickerThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.borderRadius,
        BorderRadius.lerp(themeExtension1.borderRadius, themeExtension2.borderRadius, i),
      );
      expect(
        lerpedThemeExtension.overlayCursor,
        myoroLerp(themeExtension1.overlayCursor, themeExtension2.overlayCursor, i),
      );
      expect(
        lerpedThemeExtension.overlayIdleBackgroundColor,
        Color.lerp(themeExtension1.overlayIdleBackgroundColor, themeExtension2.overlayIdleBackgroundColor, i),
      );
      expect(
        lerpedThemeExtension.selectionTypeModalConstraints,
        BoxConstraints.lerp(
          themeExtension1.selectionTypeModalConstraints,
          themeExtension2.selectionTypeModalConstraints,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.overlayHoverBackgroundColor,
        Color.lerp(themeExtension1.overlayHoverBackgroundColor, themeExtension2.overlayHoverBackgroundColor, i),
      );
      expect(
        lerpedThemeExtension.overlayTapBackgroundColor,
        Color.lerp(themeExtension1.overlayTapBackgroundColor, themeExtension2.overlayTapBackgroundColor, i),
      );
      expect(
        lerpedThemeExtension.overlayUnselectedImageStateIconConfiguration,
        MyoroIconConfiguration.lerp(
          themeExtension1.overlayUnselectedImageStateIconConfiguration,
          themeExtension2.overlayUnselectedImageStateIconConfiguration,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.selectionTypeModalSpacing,
        lerpDouble(themeExtension1.selectionTypeModalSpacing, themeExtension2.selectionTypeModalSpacing, i),
      );
      expect(
        lerpedThemeExtension.selectionTypeModalButtonCameraIcon,
        myoroLerp(
          themeExtension1.selectionTypeModalButtonCameraIcon,
          themeExtension2.selectionTypeModalButtonCameraIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.selectionTypeModalButtonGalleryIcon,
        myoroLerp(
          themeExtension1.selectionTypeModalButtonGalleryIcon,
          themeExtension2.selectionTypeModalButtonGalleryIcon,
          i,
        ),
      );
    }
  });

  test('MyoroImagePickerThemeExtension.overlayBackgroundColorBuilder', () {
    final themeExtension = MyoroImagePickerThemeExtension.fake();
    expect(
      themeExtension.overlayBackgroundColorBuilder(MyoroTapStatusEnum.idle),
      themeExtension.overlayIdleBackgroundColor,
    );
    expect(
      themeExtension.overlayBackgroundColorBuilder(MyoroTapStatusEnum.hover),
      themeExtension.overlayHoverBackgroundColor,
    );
    expect(
      themeExtension.overlayBackgroundColorBuilder(MyoroTapStatusEnum.tap),
      themeExtension.overlayTapBackgroundColor,
    );
  });
}
