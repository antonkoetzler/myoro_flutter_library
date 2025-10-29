import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroScreenWidgetShowcaseScreenViewModel].
final class MyoroScreenWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroScreen.appBar]
  bool _appBarEnabled = false;
  bool get appBarEnabled => _appBarEnabled;
  set appBarEnabled(bool appBarEnabled) {
    _appBarEnabled = appBarEnabled;
    notifyListeners();
  }

  /// [MyoroScreen.drawerEnableOpenDragGesture]
  bool _drawerEnableOpenDragGesture = MyoroScreen.drawerEnableOpenDragGestureDefaultValue;
  bool get drawerEnableOpenDragGesture => _drawerEnableOpenDragGesture;
  set drawerEnableOpenDragGesture(bool drawerEnableOpenDragGesture) {
    _drawerEnableOpenDragGesture = drawerEnableOpenDragGesture;
    notifyListeners();
  }

  /// [MyoroScreen.endDrawerEnableOpenDragGesture]
  bool _endDrawerEnableOpenDragGesture = MyoroScreen.endDrawerEnableOpenDragGestureDefaultValue;
  bool get endDrawerEnableOpenDragGesture => _endDrawerEnableOpenDragGesture;
  set endDrawerEnableOpenDragGesture(bool endDrawerEnableOpenDragGesture) {
    _endDrawerEnableOpenDragGesture = endDrawerEnableOpenDragGesture;
    notifyListeners();
  }
}
