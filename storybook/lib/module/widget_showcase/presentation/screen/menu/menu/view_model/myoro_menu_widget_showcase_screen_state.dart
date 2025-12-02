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

  /// [MyoroMenu.showSearchBar]
  bool _showSearchBar = false;
  bool get showSearchBar => _showSearchBar;
  set showSearchBar(bool showSearchBar) {
    _showSearchBar = showSearchBar;
    notifyListeners();
  }

  /// [MyoroMenu.itemBuilder]
  MyoroMenuItemBuilder<String> _itemBuilder =
      (_, item) => MyoroMenuButtonItem(
        builder: (context, tapStatusEnum) => Text(item),
        onTapDown: (_, _) => print('Selected: $item'),
      );
  MyoroMenuItemBuilder<String> get itemBuilder => _itemBuilder;
  set itemBuilder(MyoroMenuItemBuilder<String> itemBuilder) {
    _itemBuilder = itemBuilder;
    notifyListeners();
  }
}
