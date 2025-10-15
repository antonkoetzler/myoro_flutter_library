part of 'myoro_scrollables_widget_showcase_screen_view_model.dart';

/// State for the [MyoroScrollablesWidgetShowcaseScreen].
final class MyoroScrollablesWidgetShowcaseScreenState extends ChangeNotifier {
  // Configuration options.
  Axis _scrollDirection = Axis.vertical;
  ScrollPhysics? _physics;

  // Style options.
  double _gradientSize = 20.0;
  Color _gradientColor = Colors.white;

  // Getters
  Axis get scrollDirection => _scrollDirection;
  ScrollPhysics? get physics => _physics;
  double get gradientSize => _gradientSize;
  Color get gradientColor => _gradientColor;

  // Setters
  set scrollDirection(Axis scrollDirection) {
    if (_scrollDirection == scrollDirection) return;
    _scrollDirection = scrollDirection;
    notifyListeners();
  }

  set physics(ScrollPhysics? physics) {
    if (_physics == physics) return;
    _physics = physics;
    notifyListeners();
  }

  set gradientSize(double gradientSize) {
    if (_gradientSize == gradientSize) return;
    _gradientSize = gradientSize;
    notifyListeners();
  }

  set gradientColor(Color gradientColor) {
    if (_gradientColor == gradientColor) return;
    _gradientColor = gradientColor;
    notifyListeners();
  }
}
