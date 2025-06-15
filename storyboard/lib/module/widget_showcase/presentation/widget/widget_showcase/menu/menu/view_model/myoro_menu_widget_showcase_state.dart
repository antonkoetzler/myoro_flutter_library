part of 'myoro_menu_widget_showcase_view_model.dart';

/// State of [MyoroMenuWidgetShowcaseViewModel].
final class MyoroMenuWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroMenuConfiguration.constraints]
  BoxConstraints _constraints = MyoroMenuConfiguration.constraintsDefaultValue;
  BoxConstraints get constraints => _constraints;
  set constraints(BoxConstraints constraints) {
    _constraints = constraints;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.onEndReachedRequest]
  bool _onEndReachedRequestEnabled = false;
  bool get onEndReachedRequestEnabled => _onEndReachedRequestEnabled;
  set onEndReachedRequestEnabled(bool onEndReachedRequestEnabled) {
    _onEndReachedRequestEnabled = onEndReachedRequestEnabled;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.searchCallback]
  bool _searchCallbackEnabled = false;
  bool get searchCallbackEnabled => _searchCallbackEnabled;
  set searchCallbackEnabled(bool searchCallbackEnabled) {
    _searchCallbackEnabled = searchCallbackEnabled;
    notifyListeners();
  }
}
