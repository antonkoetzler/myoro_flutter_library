import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_card.dart';
part '_widget/_title.dart';

/// Base card.
class MyoroCard extends StatelessWidget {
  const MyoroCard({
    super.key,
    this.title = kMyoroEmptyString,
    this.style = const MyoroCardStyle(),
    required this.child,
  });

  /// Title of the card.
  final String title;

  /// Style.
  final MyoroCardStyle style;

  /// Child.
  final Widget child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.titleCardSpacing,
      children: [
        if (title.isNotEmpty) _Title(style, title),
        Flexible(child: _Card(style, child)),
      ],
    );
  }
}
