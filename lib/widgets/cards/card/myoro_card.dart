import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_card.dart';
part '_widgets/_title.dart';
part 'models/myoro_card_configuration.dart';
part 'myoro_card_theme_extension.dart';

/// Base card.
class MyoroCard extends StatelessWidget {
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
