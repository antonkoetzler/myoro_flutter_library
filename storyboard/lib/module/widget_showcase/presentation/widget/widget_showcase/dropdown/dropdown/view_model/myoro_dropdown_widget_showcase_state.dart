part of 'myoro_dropdown_widget_showcase_view_model.dart';

/// State of [MyoroDropdownWidgetShowcaseViewModel].
final class MyoroDropdownWidgetShowcaseState extends ChangeNotifier {
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
}
