part of 'myoro_icon_widget_showcase_screen_view_model.dart';

/// State of [MyoroIconWidgetShowcaseScreenViewModel].
final class MyoroIconWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroIcon.icon]
  IconData _icon = Icons.star;

  /// [MyoroIconStyle.color]
  Color? _color;

  /// [MyoroIconStyle.size]
  double? _size;

  /// [_icon] getter.
  IconData get icon => _icon;

  /// [_color] getter.
  Color? get color => _color;

  /// [_size] getter.
  double? get size => _size;

  /// [_icon] setter.
  set icon(IconData icon) {
    _icon = icon;
    notifyListeners();
  }

  /// [_color] setter.
  set color(Color? color) {
    _color = color;
    notifyListeners();
  }

  /// [_size] setter.
  set size(double? size) {
    _size = size;
    notifyListeners();
  }
}
