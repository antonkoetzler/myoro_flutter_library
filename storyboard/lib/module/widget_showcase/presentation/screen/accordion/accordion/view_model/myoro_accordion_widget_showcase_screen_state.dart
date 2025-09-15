part of 'myoro_accordion_widget_showcase_screen_view_model.dart';

/// State of [MyoroAccordionWidgetShowcaseScreenViewModel].
final class MyoroAccordionWidgetShowcaseScreenState extends ChangeNotifier {
  static const thumbVisibilityDefaultValue = false;

  /// [MyoroAccordionConfiguration.thumbVisibility]
  bool _thumbVisibility = thumbVisibilityDefaultValue;

  /// [_thumbVisibility] getter.
  bool get thumbVisibility => _thumbVisibility;

  /// [_thumbVisibility] setter.
  set thumbVisibility(bool thumbVisibility) {
    _thumbVisibility = thumbVisibility;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemContentBackgroundColor]
  Color? _itemContentBackgroundColor;

  /// [_itemContentBackgroundColor] getter.
  Color? get itemContentBackgroundColor => _itemContentBackgroundColor;

  /// [_itemContentBackgroundColor] setter.
  set itemContentBackgroundColor(Color? itemContentBackgroundColor) {
    _itemContentBackgroundColor = itemContentBackgroundColor;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemContentAnimationDuration]
  Duration? _itemContentAnimationDuration;

  /// [_itemContentAnimationDuration] getter.
  Duration? get itemContentAnimationDuration => _itemContentAnimationDuration;

  /// [_itemContentAnimationDuration] setter.
  set itemContentAnimationDuration(Duration? itemContentAnimationDuration) {
    _itemContentAnimationDuration = itemContentAnimationDuration;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemContentAnimationCurve]
  Curve? _itemContentAnimationCurve;

  /// [_itemContentAnimationCurve] getter.
  Curve? get itemContentAnimationCurve => _itemContentAnimationCurve;

  /// [_itemContentAnimationCurve] setter.
  set itemContentAnimationCurve(Curve? itemContentAnimationCurve) {
    _itemContentAnimationCurve = itemContentAnimationCurve;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonSelectedBackgroundColor]
  Color? _itemTitleButtonSelectedBackgroundColor;

  /// [_itemTitleButtonSelectedBackgroundColor] getter.
  Color? get itemTitleButtonSelectedBackgroundColor => _itemTitleButtonSelectedBackgroundColor;

  /// [_itemTitleButtonSelectedBackgroundColor] setter.
  set itemTitleButtonSelectedBackgroundColor(Color? itemTitleButtonSelectedBackgroundColor) {
    _itemTitleButtonSelectedBackgroundColor = itemTitleButtonSelectedBackgroundColor;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonContentPadding]
  EdgeInsets? _itemTitleButtonContentPadding;

  /// [_itemTitleButtonContentPadding] getter.
  EdgeInsets? get itemTitleButtonContentPadding => _itemTitleButtonContentPadding;

  /// [_itemTitleButtonContentPadding] setter.
  set itemTitleButtonContentPadding(EdgeInsets? itemTitleButtonContentPadding) {
    _itemTitleButtonContentPadding = itemTitleButtonContentPadding;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonSpacing]
  double? _itemTitleButtonSpacing;

  /// [_itemTitleButtonSpacing] getter.
  double? get itemTitleButtonSpacing => _itemTitleButtonSpacing;

  /// [_itemTitleButtonSpacing] setter.
  set itemTitleButtonSpacing(double? itemTitleButtonSpacing) {
    _itemTitleButtonSpacing = itemTitleButtonSpacing;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonTitleTextStyle]
  TextStyle? _itemTitleButtonTitleTextStyle;

  /// [_itemTitleButtonTitleTextStyle] getter.
  TextStyle? get itemTitleButtonTitleTextStyle => _itemTitleButtonTitleTextStyle;

  /// [_itemTitleButtonTitleTextStyle] setter.
  set itemTitleButtonTitleTextStyle(TextStyle? itemTitleButtonTitleTextStyle) {
    _itemTitleButtonTitleTextStyle = itemTitleButtonTitleTextStyle;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonArrowIcon]
  IconData? _itemTitleButtonArrowIcon;

  /// [_itemTitleButtonArrowIcon] getter.
  IconData? get itemTitleButtonArrowIcon => _itemTitleButtonArrowIcon;

  /// [_itemTitleButtonArrowIcon] setter.
  set itemTitleButtonArrowIcon(IconData? itemTitleButtonArrowIcon) {
    _itemTitleButtonArrowIcon = itemTitleButtonArrowIcon;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonArrowIconColor]
  Color? _itemTitleButtonArrowIconColor;

  /// [_itemTitleButtonArrowIconColor] getter.
  Color? get itemTitleButtonArrowIconColor => _itemTitleButtonArrowIconColor;

  /// [_itemTitleButtonArrowIconColor] setter.
  set itemTitleButtonArrowIconColor(Color? itemTitleButtonArrowIconColor) {
    _itemTitleButtonArrowIconColor = itemTitleButtonArrowIconColor;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonArrowIconSize]
  double? _itemTitleButtonArrowIconSize;

  /// [_itemTitleButtonArrowIconSize] getter.
  double? get itemTitleButtonArrowIconSize => _itemTitleButtonArrowIconSize;

  /// [_itemTitleButtonArrowIconSize] setter.
  set itemTitleButtonArrowIconSize(double? itemTitleButtonArrowIconSize) {
    _itemTitleButtonArrowIconSize = itemTitleButtonArrowIconSize;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonArrowAnimationDuration]
  Duration? _itemTitleButtonArrowAnimationDuration;

  /// [_itemTitleButtonArrowAnimationDuration] getter.
  Duration? get itemTitleButtonArrowAnimationDuration => _itemTitleButtonArrowAnimationDuration;

  /// [_itemTitleButtonArrowAnimationDuration] setter.
  set itemTitleButtonArrowAnimationDuration(Duration? itemTitleButtonArrowAnimationDuration) {
    _itemTitleButtonArrowAnimationDuration = itemTitleButtonArrowAnimationDuration;
    notifyListeners();
  }

  /// [MyoroAccordionThemeExtension.itemTitleButtonArrowAnimationCurve]
  Curve? _itemTitleButtonArrowAnimationCurve;

  /// [_itemTitleButtonArrowAnimationCurve] getter.
  Curve? get itemTitleButtonArrowAnimationCurve => _itemTitleButtonArrowAnimationCurve;

  /// [_itemTitleButtonArrowAnimationCurve] setter.
  set itemTitleButtonArrowAnimationCurve(Curve? itemTitleButtonArrowAnimationCurve) {
    _itemTitleButtonArrowAnimationCurve = itemTitleButtonArrowAnimationCurve;
    notifyListeners();
  }
}
