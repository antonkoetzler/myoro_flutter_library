import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Extension on [MyoroButtonStyle].
extension MyoroButtonStyleExtension on MyoroButtonStyle {
  /// Background [Color] builder.
  Color? backgroundColorBuilder(MyoroTapStatusEnum tapStatus) {
    return backgroundColor ??
        switch (tapStatus) {
          MyoroTapStatusEnum.idle => backgroundIdleColor,
          MyoroTapStatusEnum.hover => backgroundHoverColor,
          MyoroTapStatusEnum.tap => backgroundTapColor,
        };
  }

  /// Content [Color] builder.
  Color? contentColorBuilder(MyoroTapStatusEnum tapStatus) {
    return contentColor ??
        switch (tapStatus) {
          MyoroTapStatusEnum.idle => contentIdleColor,
          MyoroTapStatusEnum.hover => contentHoverColor,
          MyoroTapStatusEnum.tap => contentTapColor,
        };
  }

  /// [BoxBorder] builder.
  BoxBorder? borderBuilder(MyoroTapStatusEnum tapStatus) {
    if (borderWidth == null) return null;
    return Border.all(
      width: borderWidth!,
      color:
          borderColor ??
          switch (tapStatus) {
            MyoroTapStatusEnum.idle => borderIdleColor,
            MyoroTapStatusEnum.hover => borderHoverColor,
            MyoroTapStatusEnum.tap => borderTapColor,
          } ??
          MyoroColors.transparent,
    );
  }
}
