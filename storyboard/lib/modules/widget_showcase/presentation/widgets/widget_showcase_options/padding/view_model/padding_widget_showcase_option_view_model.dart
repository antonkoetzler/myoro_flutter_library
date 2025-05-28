import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionViewModel {
  PaddingWidgetShowcaseOptionViewModel(this.configuration, this.checkboxOnChanged);

  /// Configuration.
  final PaddingWidgetShowcaseOptionConfiguration configuration;

  /// [ValueNotifier] of the [PaddingWidgetShowcaseOptionEnum] loaded.
  final modeEnumController = ValueNotifier(PaddingWidgetShowcaseOptionEnum.symmetric);

  /// Dispose function.
  void dispose() {
    modeEnumController.dispose();
  }
}
