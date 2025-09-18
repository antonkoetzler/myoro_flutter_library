import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_button.dart';
part '_widget/_icon.dart';
part '_widget/_text.dart';

/// Button that holds an icon and/or text.
class MyoroIconTextButton extends StatelessWidget {
  /// Configuration.
  final MyoroIconTextButtonConfiguration configuration;

  /// [ThemeExtension]
  final MyoroIconTextButtonThemeExtension? themeExtension;

  const MyoroIconTextButton({super.key, required this.configuration, this.themeExtension});

  @override
  Widget build(context) {
    final isDarkMode = context.isDarkMode;
    final colorScheme = context.colorScheme;
    final buttonPrimaryVariantThemeExtension = MyoroButtonPrimaryVariantThemeExtension.builder(isDarkMode, colorScheme);
    final themeExtension =
        this.themeExtension ?? MyoroIconTextButtonThemeExtension.fromVariant(buttonPrimaryVariantThemeExtension);

    return InheritedProvider.value(
      value: configuration,
      child: MyoroButton(
        configuration: configuration,
        themeExtension: MyoroButtonThemeExtension.fromIconTextButtonThemeExtension(themeExtension),
        builder: (_, tapStatusEnum) => _Button(tapStatusEnum),
      ),
    );
  }
}
