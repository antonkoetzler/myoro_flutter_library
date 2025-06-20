import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroDropdownWidgetShowcaseScreenViewModel].
final class MyoroDropdownWidgetShowcaseScreenState extends ChangeNotifier {
  /// View model of [MyoroMenuWidgetShowcaseScreen].
  final _menuViewModel = MyoroMenuWidgetShowcaseScreenViewModel();
  MyoroMenuWidgetShowcaseScreenViewModel get menuViewModel => _menuViewModel;

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

  /// Dispose function.
  @override
  void dispose() {
    _menuViewModel.dispose();
    super.dispose();
  }
}
