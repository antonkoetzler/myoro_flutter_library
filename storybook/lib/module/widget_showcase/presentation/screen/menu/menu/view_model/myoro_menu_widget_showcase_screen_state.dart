part of '../myoro_menu_widget_showcase_screen.dart';

/// State of [MyoroMenuWidgetShowcaseScreenViewModel].
final class MyoroMenuWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroMenu.style]
  MyoroMenuStyle _menuStyle = const MyoroMenuStyle();
  MyoroMenuStyle get menuStyle => _menuStyle;
  set menuStyle(MyoroMenuStyle menuStyle) {
    _menuStyle = menuStyle;
    notifyListeners();
  }

  /// [MyoroMenu.items]
  Set<String>? _items = {'Menu Item 1', 'Menu Item 2', 'Menu Item 3', 'Menu Item 4', 'Menu Item 5'};
  Set<String>? get items => _items;
  set items(Set<String>? items) {
    _items = items;
    notifyListeners();
  }

  /// [MyoroMenu.selectedItems]
  Set<String> _selectedItems = {'Menu Item 1'};
  Set<String> get selectedItems => _selectedItems;
  set selectedItems(Set<String> selectedItems) {
    _selectedItems = selectedItems;
    notifyListeners();
  }

  /// [MyoroMenu.searchCallback]
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

  /// [MyoroMenu.itemBuilder]
  MyoroMenuItemBuilder<String> _itemBuilder =
      (item, _) => MyoroMenuButtonItem(
        builder: (context, tapStatusEnum) => Text(item),
        onTapDown: (_) => print('Selected: $item'),
      );
  MyoroMenuItemBuilder<String> get itemBuilder => _itemBuilder;
  set itemBuilder(MyoroMenuItemBuilder<String> itemBuilder) {
    _itemBuilder = itemBuilder;
    notifyListeners();
  }
}
