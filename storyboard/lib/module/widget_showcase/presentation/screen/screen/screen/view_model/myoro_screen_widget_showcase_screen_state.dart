import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroScreenWidgetShowcaseScreenViewModel].
final class MyoroScreenWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroScreenConfiguration.appBar]
  bool _appBarEnabled = false;
  bool get appBarEnabled => _appBarEnabled;
  set appBarEnabled(bool appBarEnabled) {
    _appBarEnabled = appBarEnabled;
    notifyListeners();
  }
}
