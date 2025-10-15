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

  /// [MyoroScreenConfiguration.drawerEnableOpenDragGesture]
  bool _drawerEnableOpenDragGesture = MyoroScreenConfiguration.drawerEnableOpenDragGestureDefaultValue;
  bool get drawerEnableOpenDragGesture => _drawerEnableOpenDragGesture;
  set drawerEnableOpenDragGesture(bool drawerEnableOpenDragGesture) {
    _drawerEnableOpenDragGesture = drawerEnableOpenDragGesture;
    notifyListeners();
  }

  /// [MyoroScreenConfiguration.endDrawerEnableOpenDragGesture]
  bool _endDrawerEnableOpenDragGesture = MyoroScreenConfiguration.endDrawerEnableOpenDragGestureDefaultValue;
  bool get endDrawerEnableOpenDragGesture => _endDrawerEnableOpenDragGesture;
  set endDrawerEnableOpenDragGesture(bool endDrawerEnableOpenDragGesture) {
    _endDrawerEnableOpenDragGesture = endDrawerEnableOpenDragGesture;
    notifyListeners();
  }
}
