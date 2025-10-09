part of 'myoro_scrollables_widget_showcase_screen_view_model.dart';

/// State for the [MyoroScrollablesWidgetShowcaseScreen].
final class MyoroScrollablesWidgetShowcaseScreenState extends ChangeNotifier {
  // Configuration options.
  Axis _scrollDirection = Axis.vertical;
  ScrollPhysics? _physics;
  bool _gradientEnabled = true;

  // Style options.
  double _gradientSize = 20.0;
  Color _gradientColor = Colors.white;

  // Style options
  Color? _backgroundColor;
  BorderRadius? _borderRadius;
  EdgeInsets? _padding;
  EdgeInsets? _margin;

  // Getters
  Axis get scrollDirection => _scrollDirection;
  ScrollPhysics? get physics => _physics;
  bool get gradientEnabled => _gradientEnabled;
  double get gradientSize => _gradientSize;
  Color get gradientColor => _gradientColor;
  Color? get backgroundColor => _backgroundColor;
  BorderRadius? get borderRadius => _borderRadius;
  EdgeInsets? get padding => _padding;
  EdgeInsets? get margin => _margin;

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

  set gradientEnabled(bool gradientEnabled) {
    if (_gradientEnabled == gradientEnabled) return;
    _gradientEnabled = gradientEnabled;
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

  set backgroundColor(Color? backgroundColor) {
    if (_backgroundColor == backgroundColor) return;
    _backgroundColor = backgroundColor;
    notifyListeners();
  }

  set borderRadius(BorderRadius? borderRadius) {
    if (_borderRadius == borderRadius) return;
    _borderRadius = borderRadius;
    notifyListeners();
  }

  set padding(EdgeInsets? padding) {
    if (_padding == padding) return;
    _padding = padding;
    notifyListeners();
  }

  set margin(EdgeInsets? margin) {
    if (_margin == margin) return;
    _margin = margin;
    notifyListeners();
  }
}
