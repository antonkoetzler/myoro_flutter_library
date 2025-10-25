import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroCurrencyInputWidgetShowcaseScreen].
class MyoroCurrencyInputWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroCurrencyInputWidgetShowcaseScreenState();

  /// State getter
  MyoroCurrencyInputWidgetShowcaseScreenState get state => _state;

  /// Sets the currency
  void setCurrency(MyoroCurrencyEnum currency) {
    _state.setCurrency(currency);
  }
}
