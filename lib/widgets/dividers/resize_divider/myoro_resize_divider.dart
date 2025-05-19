import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_resize_button.dart';
part 'models/myoro_resize_divider_configuration.dart';
part 'myoro_resize_divider_theme_extension.dart';
part 'myoro_resize_divider_types.dart';

/// A divider with a click/tap + drag resize functionality.
class MyoroResizeDivider extends StatelessWidget {
  /// Configuration.
  final MyoroResizeDividerConfiguration configuration;

  const MyoroResizeDivider({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MyoroBasicDivider(configuration: configuration.basicDividerConfiguration),
        _ResizeButton(configuration),
      ],
    );
  }
}
