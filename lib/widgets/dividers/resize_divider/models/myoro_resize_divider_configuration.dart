import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_configuration.g.dart';

/// Configuration of [MyoroResizeDivider].
@myoroModel
class MyoroResizeDividerConfiguration with $MyoroResizeDividerConfigurationMixin {
  /// Configuration model with all configurable options of [MyoroBasicDivider].
  final MyoroBasicDividerConfiguration basicDividerConfiguration;

  /// Resize activated callback.
  final MyoroResizeDividerDragCallback? dragCallback;

  const MyoroResizeDividerConfiguration({required this.basicDividerConfiguration, this.dragCallback});
}
