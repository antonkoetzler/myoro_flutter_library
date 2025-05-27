import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseViewModel extends ChangeNotifier {
  static const tooltipEnabledDefaultValue = false;
  static const onTapDownEnabledDefaultValue = true;
  static const onTapUpEnabledDefaultValue = true;

  /// Whether or not to provide [MyoroButtonConfiguration.tooltipConfiguration].
  bool _tooltipEnabled = tooltipEnabledDefaultValue;
  bool get tooltipEnabled => _tooltipEnabled;
  set tooltipEnabled(bool tooltipEnabled) {
    _tooltipEnabled = tooltipEnabled;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.cursor]
  MouseCursor? _cursor;
  MouseCursor? get cursor => _cursor;
  set cursor(MouseCursor? cursor) {
    _cursor = cursor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderRadius]
  BorderRadius? _borderRadius;
  BorderRadius? get borderRadius => _borderRadius;
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder]
  MyoroButtonConfigurationBackgroundColorBuilder? _backgroundColorBuilder;
  MyoroButtonConfigurationBackgroundColorBuilder? get backgroundColorBuilder => _backgroundColorBuilder;
  set backgroundColorBuilder(MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder) {
    _backgroundColorBuilder = backgroundColorBuilder;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderBuilder]
  MyoroButtonConfigurationBorderBuilder? _borderBuilder;
  MyoroButtonConfigurationBorderBuilder? get borderBuilder => _borderBuilder;
  set borderBuilder(MyoroButtonConfigurationBorderBuilder? borderBuilder) {
    _borderBuilder = borderBuilder;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.onTapDown]
  bool _onTapDownEnabled = onTapDownEnabledDefaultValue;
  bool get onTapDownEnabled => _onTapDownEnabled;
  set onTapDownEnabled(bool onTapDownEnabled) {
    _onTapDownEnabled = onTapDownEnabled;
    notifyListeners;
  }

  /// [MyoroButtonConfiguration.onTapUp]
  bool _onTapUpEnabled = onTapUpEnabledDefaultValue;
  bool get onTapUpEnabled => _onTapUpEnabled;
  set onTapUpEnabled(bool onTapUpEnabled) {
    _onTapUpEnabled = onTapUpEnabled;
    notifyListeners();
  }
}
