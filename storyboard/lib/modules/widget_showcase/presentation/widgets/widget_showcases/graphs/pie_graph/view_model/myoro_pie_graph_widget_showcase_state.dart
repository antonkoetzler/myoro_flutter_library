part of 'myoro_pie_graph_widget_showcase_view_model.dart';

/// State of [MyoroPieGraphWidgetShowcaseViewModel].
final class MyoroPieGraphWidgetShowcaseState extends ChangeNotifier {
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
