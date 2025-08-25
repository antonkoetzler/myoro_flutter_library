part of 'myoro_menu_view_model.dart';

/// State of [MyoroMenuNotifier].
class MyoroMenuState<T, C extends MyoroMenuConfiguration<T>> {
  MyoroMenuState(this.configuration, Set<T> initiallySelectedItems)
    : _selectedItemsNotifier = ValueNotifier(initiallySelectedItems) {
    _itemsRequestNotifier.requestCallback = configuration.request;
  }

  /// Configuration.
  C configuration;

  /// Loaded items in the [MyoroMenu].
  final _itemsRequestNotifier = MyoroRequestNotifier<Set<T>>();

  /// [_itemsRequestNotifier] getter.
  MyoroRequestNotifier<Set<T>> get itemsRequestNotifier {
    return _itemsRequestNotifier;
  }

  /// Getter of [_itemsRequestNotifier]'s value.
  MyoroRequest<Set<T>> get itemsRequest {
    return _itemsRequestNotifier.value;
  }

  /// Getter of [itemsRequest]'s [MyoroRequest.data].
  Set<T> get items {
    return _itemsRequestNotifier.value.data ?? <T>{};
  }

  /// [_itemsRequestNotifier] setter.
  set itemsRequest(MyoroRequest<Set<T>> itemsRequest) {
    _itemsRequestNotifier.value = itemsRequest;
  }

  /// Queried items in the [MyoroMenu].
  final _queriedItemsNotifier = ValueNotifier<Set<T>?>(null);

  /// [_queriedItemsNotifier] getter.
  ValueNotifier<Set<T>?> get queriedItemsNotifier {
    return _queriedItemsNotifier;
  }

  /// Value of [_queriedItemsNotifier]'s value.
  Set<T>? get queriedItems {
    return _queriedItemsNotifier.value;
  }

  /// [_queriedItemsNotifier] setter.
  set queriedItems(Set<T>? queriedItems) {
    _queriedItemsNotifier.value = queriedItems;
  }

  /// Selected [MyoroMenuItem]s.
  final ValueNotifier<Set<T>> _selectedItemsNotifier;

  /// [_selectedItemsNotifier] getter.
  ValueNotifier<Set<T>> get selectedItemsNotifier {
    return _selectedItemsNotifier;
  }

  /// Getter of [_selectedItemsNotifier]'s value.
  Set<T> get selectedItems {
    return _selectedItemsNotifier.value;
  }

  /// [_selectedItemsNotifier] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsNotifier.value = selectedItems;
  }

  /// Position of [_scrollController] before [MyoroMenu] was refreshed.
  double? onEndReachedPosition;

  /// To call [MyoroMenuConfiguration.onEndReachedRequest].
  final _scrollController = ScrollController();

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }

  /// Dispose function.
  void dispose() {
    _itemsRequestNotifier.dispose();
    _queriedItemsNotifier.dispose();
    _selectedItemsNotifier.dispose();
    _scrollController.dispose();
  }
}
