import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_card.dart';
part '_widget/_title.dart';

/// Base card.
class MyoroCard extends StatelessWidget {
  const MyoroCard({super.key, this.title = kMyoroEmptyString, this.themeExtension, required this.child});

  /// Title of the card.
  final String title;

  /// Style.
  final MyoroCardThemeExtension? themeExtension;

  /// Child.
  final Widget child;

  @override
  Widget build(context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final themeExtension = this.themeExtension ?? MyoroCardThemeExtension.builder(colorScheme, textTheme);
    final titleCardSpacing = themeExtension.titleCardSpacing ?? 0;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: titleCardSpacing,
        children: [
          if (title.isNotEmpty) _Title(title),
          Flexible(child: _Card(child)),
        ],
      ),
    );
  }
}
