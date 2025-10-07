part of 'myoro_selection_dropdowns_widget_showcase_screen_view_model.dart';

/// State of [MyoroSelectionDropdownsWidgetShowcaseScreenViewModel].
final class MyoroSelectionDropdownsWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroDropdownTypeEnum] for single selection dropdown
  MyoroDropdownTypeEnum _singleDropdownType = MyoroDropdownTypeEnum.overlay;
  MyoroDropdownTypeEnum get singleDropdownType => _singleDropdownType;
  set singleDropdownType(MyoroDropdownTypeEnum singleDropdownType) {
    _singleDropdownType = singleDropdownType;
    notifyListeners();
  }

  /// [MyoroDropdownTypeEnum] for multi selection dropdown
  MyoroDropdownTypeEnum _multiDropdownType = MyoroDropdownTypeEnum.overlay;
  MyoroDropdownTypeEnum get multiDropdownType => _multiDropdownType;
  set multiDropdownType(MyoroDropdownTypeEnum multiDropdownType) {
    _multiDropdownType = multiDropdownType;
    notifyListeners();
  }
}
