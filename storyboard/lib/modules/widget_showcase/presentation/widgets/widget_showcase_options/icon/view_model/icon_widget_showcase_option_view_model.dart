import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [IconWidgetShowcaseOptionViewModel].
final class IconWidgetShowcaseOptionViewModel {
  IconWidgetShowcaseOptionViewModel(this.configuration) {
    iconController.addListener(_iconControllerListener);
    iconSizeController.addListener(_iconSizeControllerListener);
  }

  /// Configuration.
  final IconWidgetShowcaseOptionConfiguration configuration;

  /// Controller of the [IconData].
  final iconController = ValueNotifier(myoroFake<IconData>());
  IconData get icon => iconController.value;

  /// Controller of the [IconData]'s size.
  final iconSizeController = ValueNotifier(30.0);
  double get iconSize => iconSizeController.value;

  /// Dispose function.
  void dispose() {
    iconController.dispose();
    iconSizeController.dispose();
  }

  /// Listener of [iconController].
  void _iconControllerListener() {
    configuration.iconOnChanged(icon);
  }

  /// Listener of [iconSizeController].
  void _iconSizeControllerListener() {
    configuration.iconSizeOnChanged?.call(iconSize);
  }
}
