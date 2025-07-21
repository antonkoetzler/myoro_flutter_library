import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_resize_button.dart';

/// A divider with a click/tap + drag resize functionality.
class MyoroResizeDivider extends MyoroStatelessWidget {
  /// Configuration.
  final MyoroResizeDividerConfiguration configuration;

  const MyoroResizeDivider({super.key, required this.configuration});

  @override
  Widget build(context) {
    return Stack(
      alignment: Alignment.center,
      children: [MyoroBasicDivider(configuration: configuration), _ResizeButton(configuration)],
    );
  }
}
