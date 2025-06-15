part of '../myoro_search_input_widget_showcase.dart';

/// State of [MyoroSearchInputWidgetShowcase].
final class MyoroSearchInputWidgetShowcaseState extends ChangeNotifier {
  /// Items of the [MyoroSearchInput].
  final items = {for (int i = 0; i < faker.randomGenerator.integer(50, min: 5); i++) 'Item #$i'};

  /// [MyoroSearchInputConfiguration.requestWhenChanged]
  bool _requestWhenChanged = false;
  bool get requestWhenChanged => _requestWhenChanged;
  set requestWhenChanged(bool requestWhenChanged) {
    _requestWhenChanged = requestWhenChanged;
    notifyListeners();
  }
}
