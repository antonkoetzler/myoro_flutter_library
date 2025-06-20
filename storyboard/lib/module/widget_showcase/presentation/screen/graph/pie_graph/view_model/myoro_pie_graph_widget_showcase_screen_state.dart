import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroPieGraphWidgetShowcaseScreenViewModel].
final class MyoroPieGraphWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroPieGraphConfiguration.typeEnum]
  MyoroPieGraphEnum _typeEnum = MyoroPieGraphEnum.pie;
  MyoroPieGraphEnum get typeEnum => _typeEnum;
  set typeEnum(MyoroPieGraphEnum typeEnum) {
    _typeEnum = typeEnum;
    notifyListeners();
  }

  /// [MyoroPieGraphConfiguration.centerWidget]
  bool _centerWidgetEnabled = false;
  bool get centerWidgetEnabled => _centerWidgetEnabled;
  set centerWidgetEnabled(bool centerWidgetEnabled) {
    _centerWidgetEnabled = centerWidgetEnabled;
    notifyListeners();
  }
}
