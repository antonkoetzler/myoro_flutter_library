part of '../myoro_dropdown_widget_showcase_screen.dart';

/// State of [MyoroDropdownWidgetShowcaseScreenViewModel].
final class MyoroDropdownWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroDropdown.style]
  MyoroDropdownStyle _style = const MyoroDropdownStyle();
  MyoroDropdownStyle get style => _style;
  set style(MyoroDropdownStyle style) {
    _style = style;
    notifyListeners();
  }

  /// [MyoroDropdown.showingController]
  final ValueNotifier<bool> _showingController = ValueNotifier<bool>(false);
  ValueNotifier<bool> get showingController => _showingController;

  /// [MyoroDropdown.items]
  Set<String>? _items = {'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5'};
  Set<String>? get items => _items;
  set items(Set<String>? items) {
    _items = items;
    notifyListeners();
  }

  /// [MyoroDropdown.selectedItems]
  Set<String> _selectedItems = {'Option 1'};
  Set<String> get selectedItems => _selectedItems;
  set selectedItems(Set<String> selectedItems) {
    _selectedItems = selectedItems;
    notifyListeners();
  }

  /// [MyoroDropdown.searchCallback]
  MyoroMenuSearchCallback<String>? _searchCallback = (query) {
    // Simple search implementation
    print('Searching for: $query');
  };
  MyoroMenuSearchCallback<String>? get searchCallback => _searchCallback;
  set searchCallback(MyoroMenuSearchCallback<String>? searchCallback) {
    _searchCallback = searchCallback;
    notifyListeners();
  }

  /// Whether search callback is enabled
  bool _searchCallbackEnabled = false;
  bool get searchCallbackEnabled => _searchCallbackEnabled;
  set searchCallbackEnabled(bool searchCallbackEnabled) {
    _searchCallbackEnabled = searchCallbackEnabled;
    notifyListeners();
  }

  /// [MyoroDropdown.dropdownType]
  MyoroDropdownTypeEnum _dropdownType = MyoroDropdownTypeEnum.expanding;
  MyoroDropdownTypeEnum get dropdownType => _dropdownType;
  set dropdownType(MyoroDropdownTypeEnum dropdownType) {
    _dropdownType = dropdownType;
    notifyListeners();
  }

  /// [MyoroDropdown.targetKey]
  GlobalKey? _targetKey;
  GlobalKey? get targetKey => _targetKey;
  set targetKey(GlobalKey? targetKey) {
    _targetKey = targetKey;
    notifyListeners();
  }

  /// [MyoroDropdown.itemBuilder]
  MyoroMenuItemBuilder<String> _itemBuilder =
      (item) => MyoroMenuButtonItem(
        builder: (context, tapStatusEnum) => Text(item),
        onTapDown: (_) => print('Selected: $item'),
      );
  MyoroMenuItemBuilder<String> get itemBuilder => _itemBuilder;
  set itemBuilder(MyoroMenuItemBuilder<String> itemBuilder) {
    _itemBuilder = itemBuilder;
    notifyListeners();
  }

  @override
  void dispose() {
    _showingController.dispose();
    super.dispose();
  }
}
