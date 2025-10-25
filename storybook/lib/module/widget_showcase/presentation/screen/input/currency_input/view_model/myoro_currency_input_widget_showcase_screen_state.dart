import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// State of [MyoroCurrencyInputWidgetShowcaseScreen].
class MyoroCurrencyInputWidgetShowcaseScreenState extends ChangeNotifier {
  /// Form controller
  final formController = MyoroFormController();

  /// Current currency
  MyoroCurrencyEnum _currency = MyoroCurrencyEnum.usd;

  /// [MyoroCurrencyInputConfiguration.min]
  double _min = 0;

  /// [MyoroCurrencyInputConfiguration.max]
  double? _max;

  /// [MyoroCurrencyInputConfiguration.decimalPlaces]
  int _decimalPlaces = 0;

  /// Currency getter
  MyoroCurrencyEnum get currency => _currency;

  /// Min getter
  double get min => _min;

  /// Max getter
  double? get max => _max;

  /// Decimal places getter
  int get decimalPlaces => _decimalPlaces;

  /// Sets the currency
  void setCurrency(MyoroCurrencyEnum currency) {
    _currency = currency;
    notifyListeners();
  }

  /// Min setter
  set min(double min) {
    _min = min;
    notifyListeners();
  }

  /// Max setter
  set max(double? max) {
    _max = max;
    notifyListeners();
  }

  /// Decimal places setter
  set decimalPlaces(int decimalPlaces) {
    _decimalPlaces = decimalPlaces;
    notifyListeners();
  }
}
