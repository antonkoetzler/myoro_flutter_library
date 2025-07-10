import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_card.dart';
part '_widget/_title.dart';

/// Base card.
class MyoroCard extends MyoroStatelessWidget {
  /// Configuration.
  final MyoroCardConfiguration configuration;

  const MyoroCard({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.titleCardSpacing,
      children: [if (configuration.title.isNotEmpty) _Title(configuration), Flexible(child: _Card(configuration))],
    );
  }
}
