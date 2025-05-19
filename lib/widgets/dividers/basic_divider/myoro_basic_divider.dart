import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'models/myoro_basic_divider_configuration.dart';
part 'myoro_basic_divider_theme_extension.dart';

/// A simple divider.
class MyoroBasicDivider extends StatelessWidget {
  /// Configuration model with all configurable options of [MyoroBasicDivider].
  final MyoroBasicDividerConfiguration configuration;

  const MyoroBasicDivider({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroBasicDividerThemeExtension>();
    final isHorizontal = configuration.direction.isHorizontal;
    final setShortValue = configuration.shortValue ?? themeExtension.shortValue;

    return Padding(
      padding: configuration.padding ?? EdgeInsets.zero,
      child: Container(
        color: themeExtension.color,
        width: isHorizontal ? themeExtension.longValue : setShortValue,
        height: isHorizontal ? setShortValue : themeExtension.longValue,
      ),
    );
  }
}
