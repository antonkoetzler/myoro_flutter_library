part of 'myoro_selection_dropdowns_widget_showcase_screen_view_model.dart';

/// State of [MyoroSelectionDropdownsWidgetShowcaseScreenViewModel].
final class MyoroSelectionDropdownsWidgetShowcaseScreenState extends ChangeNotifier {
  /// View model of [MyoroMenuWidgetShowcaseScreen].
  final _menuViewModel = MyoroMenusWidgetShowcaseScreenViewModel();
  MyoroMenusWidgetShowcaseScreenViewModel get menuViewModel => _menuViewModel;

  /// [MyoroSelectionDropdownConfiguration.label]
  String _label = MyoroSelectionDropdownConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroSelectionDropdownConfiguration.menuTypeEnum]
  MyoroSelectionDropdownMenuTypeEnum _menuTypeEnum = MyoroSelectionDropdownConfiguration.menuTypeEnumDefaultValue;
  MyoroSelectionDropdownMenuTypeEnum get menuTypeEnum => _menuTypeEnum;
  set menuTypeEnum(MyoroSelectionDropdownMenuTypeEnum menuTypeEnum) {
    _menuTypeEnum = menuTypeEnum;
    notifyListeners();
  }

  /// [MyoroSelectionDropdownConfiguration.allowItemClearing]
  bool _allowItemClearing = MyoroSelectionDropdownConfiguration.allowItemClearingDefaultValue;
  bool get allowItemClearing => _allowItemClearing;
  set allowItemClearing(bool allowItemClearing) {
    _allowItemClearing = allowItemClearing;
    notifyListeners();
  }

  /// [MyoroSelectionDropdownConfiguration.selectedItemTextAlign]
  TextAlign _selectedItemTextAlign = MyoroSelectionDropdownConfiguration.selectedItemTextAlignDefaultValue;
  TextAlign get selectedItemTextAlign => _selectedItemTextAlign;
  set selectedItemTextAlign(TextAlign selectedItemTextAlign) {
    _selectedItemTextAlign = selectedItemTextAlign;
    notifyListeners();
  }

  // Theme Extension Properties

  /// [MyoroSelectionDropdownThemeExtension.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroSelectionDropdownThemeExtension.menuBorder]
  BoxBorder? _menuBorder;
  BoxBorder? get menuBorder => _menuBorder;
  set menuBorder(BoxBorder? menuBorder) {
    _menuBorder = menuBorder;
    notifyListeners();
  }

  /// [MyoroSelectionDropdownThemeExtension.menuBorderRadius]
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
