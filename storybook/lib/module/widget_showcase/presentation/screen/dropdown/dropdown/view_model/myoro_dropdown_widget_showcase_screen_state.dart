part of '../myoro_dropdown_widget_showcase_screen.dart';

/// State of [MyoroDropdownWidgetShowcaseScreenViewModel].
final class MyoroDropdownWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroDropdown.style]
  MyoroDropdownStyle _style = const MyoroDropdownStyle();

  /// [MyoroDropdown.showingController]
  final ValueNotifier<bool> _showingController = ValueNotifier<bool>(false);

  /// [MyoroDropdown.items]
  Set<String>? _items = {'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5'};

  /// [MyoroDropdown.selectedItems]
  final _selectedItemsController = ValueNotifier(<String>{});

  /// [MyoroDropdown.searchCallback]
  MyoroMenuSearchCallback<String>? _searchCallback = (query) {
    // Simple search implementation
    if (kDebugMode) {
      print('Searching for: $query');
    }
  };

  /// Whether search callback is enabled
  bool _searchCallbackEnabled = false;

  /// [MyoroDropdown.dropdownType]
  MyoroDropdownTypeEnum _dropdownType = MyoroDropdownTypeEnum.expanding;

  /// [MyoroDropdown.targetKey]
  GlobalKey? _targetKey;

  @override
  void dispose() {
    _showingController.dispose();
    _selectedItemsController.dispose();
    super.dispose();
  }

  /// [_dropdownType] getter.
  MyoroDropdownTypeEnum get dropdownType {
    return _dropdownType;
  }

  /// [_style] getter.
  MyoroDropdownStyle get style {
    return _style;
  }

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController]'s value.
  bool get showing {
    return _showingController.value;
  }

  /// [_items] getter.
  Set<String>? get items {
    return _items;
  }

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<String>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// Getter of [_selectedItemsController]'s value.
  Set<String> get selectedItems {
    return _selectedItemsController.value;
  }

  /// [_targetKey] getter.
  GlobalKey? get targetKey {
    return _targetKey;
  }

  /// [_searchCallback] getter.
  MyoroMenuSearchCallback<String>? get searchCallback {
    return _searchCallback;
  }

  /// [_searchCallbackEnabled] getter.
  bool get searchCallbackEnabled {
    return _searchCallbackEnabled;
  }

  /// [_style] setter.
  set style(MyoroDropdownStyle style) {
    _style = style;
    notifyListeners();
  }

  /// [_showingController] setter.
  set showing(bool showing) {
    _showingController.value = showing;
    notifyListeners();
  }

  /// [_items] setter.
  set items(Set<String>? items) {
    _items = items;
    notifyListeners();
  }

  /// [_selectedItemsController] setter.
  set selectedItems(Set<String> selectedItems) {
    _selectedItemsController.value = selectedItems;
    notifyListeners();
  }

  /// [_searchCallback] setter.
  set searchCallback(MyoroMenuSearchCallback<String>? searchCallback) {
    _searchCallback = searchCallback;
    notifyListeners();
  }

  /// [_searchCallbackEnabled] setter.
  set searchCallbackEnabled(bool searchCallbackEnabled) {
    _searchCallbackEnabled = searchCallbackEnabled;
    notifyListeners();
  }

  /// [_dropdownType] setter.
  set dropdownType(MyoroDropdownTypeEnum dropdownType) {
    _dropdownType = dropdownType;
    notifyListeners();
  }

  /// [_targetKey] setter.
  set targetKey(GlobalKey? targetKey) {
    _targetKey = targetKey;
    notifyListeners();
  }
}
