import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';

/// State of [MyoroSearchInputWidgetShowcaseScreen].
final class MyoroSearchInputWidgetShowcaseScreenState extends ChangeNotifier {
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
