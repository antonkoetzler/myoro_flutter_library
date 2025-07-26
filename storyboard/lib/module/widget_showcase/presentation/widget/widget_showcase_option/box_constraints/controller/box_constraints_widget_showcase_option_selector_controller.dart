import 'package:flutter/foundation.dart';
import 'package:storyboard/storyboard.dart';

/// Controller of a [_Slider] in [BoxConstraintsWidgetShowcaseOption].
final class BoxConstraintsWidgetShowcaseOptionSelectorController extends ChangeNotifier {
  static const enabledDefaultValue = true;

  BoxConstraintsWidgetShowcaseOptionSelectorController({bool enabled = enabledDefaultValue, required double value})
    : _enabled = enabled,
      _value = value;

  /// Whether or not the field is being used to construct the [BoxConstraints].
  bool _enabled;
  bool get enabled => _enabled;
  set enabled(bool enabled) {
    _enabled = enabled;
    notifyListeners();
  }

  /// Value of the [BoxConstraints] field.
  double _value;
  double get value => _value;
  set value(double value) {
    _value = value;
    notifyListeners();
  }
}
