part of 'myoro_menu_view_model.dart';

/// State of [MyoroMenuViewModel].
class MyoroMenuState<T> {
  /// Default constructor.
  MyoroMenuState(this.showSearchBar, this._items, this.selectedItems, this.itemBuilder, this.footer)
    : _queriedItemsController = ValueNotifier(_items);

  /// [MyoroMenu.searchCallback].
  bool showSearchBar;

  /// [MyoroMenu.items].
  Set<T>? _items;

  /// [MyoroMenu.selectedItems].
  Set<T> selectedItems;

  /// [MyoroMenu.itemBuilder].
  MyoroMenuItemBuilder<T> itemBuilder;

  /// [MyoroMenu.footer].
  Widget? footer;

  /// [ScrollController] of the item listing.
  final _scrollController = ScrollController();

  /// Query.
  String _query = kMyoroEmptyString;

  /// [ValueNotifier] of the queried items.
  final ValueNotifier<Set<T>?> _queriedItemsController;

  /// Dispose function.
  void dispose() {
    _scrollController.dispose();
    _queriedItemsController.dispose();
  }

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }

  /// [_queriedItemsController] getter.
  ValueNotifier<Set<T>?> get queriedItemsController {
    return _queriedItemsController;
  }

  /// Getter of [_queriedItemsController]'s value.
  Set<T>? get queriedItems {
    return _queriedItemsController.value;
  }

  /// [_items] setter.
  set items(Set<T>? items) {
    if (items == _items) return;
    _items = items;
    queriedItems = items?.where((item) => item.toString().toUpperCase().contains(_query.toUpperCase())).toSet();
  }

  /// [_query] setter.
  set query(String query) {
    if (query == _query) return;
    _query = query;
    queriedItems = _items?.where((item) => item.toString().toUpperCase().contains(_query.toUpperCase())).toSet();
  }

  /// [_queriedItemsController] setter.
  set queriedItems(Set<T>? queriedItems) {
    _queriedItemsController.value = queriedItems;
  }
}
