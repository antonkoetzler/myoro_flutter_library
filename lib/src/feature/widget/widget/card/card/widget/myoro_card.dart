import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_card.dart';
part '../_widget/_title.dart';

/// Base card.
class MyoroCard extends StatelessWidget {
  const MyoroCard({
    super.key,
    this.style = const MyoroCardStyle(),
    this.title = kMyoroEmptyString,
    required this.child,
  });

  /// Style.
  final MyoroCardStyle style;

  /// Title of the card.
  final String title;

  /// Child.
  final Widget child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();
    final titleCardSpacing = style.titleCardSpacing ?? themeExtension.titleCardSpacing ?? 0;

    return InheritedProvider.value(
      value: style,
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
