import 'package:flutter/foundation.dart';

/// State of [MyoroScreenWidgetShowcaseViewModel].
final class MyoroScreenWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroScreenConfiguration.appBar]
  bool _appBarEnabled = false;
  bool get appBarEnabled => _appBarEnabled;
  set appBarEnabled(bool appBarEnabled) {
    _appBarEnabled = appBarEnabled;
    notifyListeners();
  }
}
