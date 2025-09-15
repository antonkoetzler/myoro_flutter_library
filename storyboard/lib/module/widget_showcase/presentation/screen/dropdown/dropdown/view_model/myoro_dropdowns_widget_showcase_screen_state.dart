part of 'myoro_dropdowns_widget_showcase_screen_view_model.dart';

/// State of [MyoroDropdownsWidgetShowcaseScreenViewModel].
final class MyoroDropdownsWidgetShowcaseScreenState extends ChangeNotifier {
  /// View model of [MyoroMenuWidgetShowcaseScreen].
  final _menuViewModel = MyoroMenusWidgetShowcaseScreenViewModel();
  MyoroMenusWidgetShowcaseScreenViewModel get menuViewModel => _menuViewModel;

  /// [MyoroDropdownConfiguration.label]
  String _label = MyoroDropdownConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroDropdownConfiguration.menuTypeEnum]
  MyoroDropdownMenuTypeEnum _menuTypeEnum = MyoroDropdownConfiguration.menuTypeEnumDefaultValue;
  MyoroDropdownMenuTypeEnum get menuTypeEnum => _menuTypeEnum;
  set menuTypeEnum(MyoroDropdownMenuTypeEnum menuTypeEnum) {
    _menuTypeEnum = menuTypeEnum;
    notifyListeners();
  }

  /// [MyoroDropdownConfiguration.allowItemClearing]
  bool _allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue;
  bool get allowItemClearing => _allowItemClearing;
  set allowItemClearing(bool allowItemClearing) {
    _allowItemClearing = allowItemClearing;
    notifyListeners();
  }

  /// [MyoroDropdownConfiguration.selectedItemTextAlign]
  TextAlign _selectedItemTextAlign = MyoroDropdownConfiguration.selectedItemTextAlignDefaultValue;
  TextAlign get selectedItemTextAlign => _selectedItemTextAlign;
  set selectedItemTextAlign(TextAlign selectedItemTextAlign) {
    _selectedItemTextAlign = selectedItemTextAlign;
    notifyListeners();
  }

  // Theme Extension Properties

  /// [MyoroDropdownThemeExtension.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroDropdownThemeExtension.menuBorder]
  BoxBorder? _menuBorder;
  BoxBorder? get menuBorder => _menuBorder;
  set menuBorder(BoxBorder? menuBorder) {
    _menuBorder = menuBorder;
    notifyListeners();
  }

  /// [MyoroDropdownThemeExtension.menuBorderRadius]
  BorderRadius? _menuBorderRadius;
  BorderRadius? get menuBorderRadius => _menuBorderRadius;
  set menuBorderRadius(BorderRadius? menuBorderRadius) {
    _menuBorderRadius = menuBorderRadius;
    notifyListeners();
  }

  /// Dispose function.
  @override
  void dispose() {
    _menuViewModel.dispose();
    super.dispose();
  }
}
