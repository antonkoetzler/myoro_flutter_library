part of 'myoro_menu_view_model.dart';

/// State of [MyoroMenuController].
class MyoroMenuState<T, C extends MyoroMenuConfiguration<T>> {
  /// Creates a new instance of [MyoroMenuState].
  MyoroMenuState(this.configuration, Set<T> initiallySelectedItems) : _selectedItemsController = ValueNotifier(initiallySelectedItems) {
    _itemsRequestController.requestCallback = configuration.request;
  }

  /// Configuration.
  C configuration;

  /// Loaded items in the [MyoroMenu].
  final _itemsRequestController = MyoroRequestController<Set<T>>();

  /// Queried items in the [MyoroMenu].
  final _queriedItemsController = ValueNotifier<Set<T>?>(null);

  /// Selected [MyoroMenuItem]s.
  final ValueNotifier<Set<T>> _selectedItemsController;

  /// To call [MyoroMenuConfiguration.onEndReachedRequest].
  final _scrollController = ScrollController();

  /// Position of [_scrollController] before [MyoroMenu] was refreshed.
  double? onEndReachedPosition;

  /// [_itemsRequestController] getter.
  MyoroRequestController<Set<T>> get itemsRequestController {
    return _itemsRequestController;
  }

  /// [_queriedItemsController] getter.
  ValueNotifier<Set<T>?> get queriedItemsController {
    return _queriedItemsController;
  }

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<T>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }

  /// Getter of [_itemsRequestController]'s value.
  MyoroRequest<Set<T>> get itemsRequest {
    return _itemsRequestController.value;
  }

  /// Getter of [itemsRequest]'s [MyoroRequest.data].
  Set<T> get items {
    return _itemsRequestController.value.data ?? <T>{};
  }

  /// Value of [_queriedItemsController]'s value.
  Set<T>? get queriedItems {
    return _queriedItemsController.value;
  }

  /// Getter of [_selectedItemsController]'s value.
  Set<T> get selectedItems {
    return _selectedItemsController.value;
  }

  /// [_itemsRequestController] setter.
  set itemsRequest(MyoroRequest<Set<T>> itemsRequest) {
    _itemsRequestController.value = itemsRequest;
  }

  /// [_queriedItemsController] setter.
  set queriedItems(Set<T>? queriedItems) {
    _queriedItemsController.value = queriedItems;
  }

  /// [_selectedItemsController] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsController.value = selectedItems;
  }

  /// Dispose function.
  void dispose() {
    _itemsRequestController.dispose();
    _queriedItemsController.dispose();
    _selectedItemsController.dispose();
    _scrollController.dispose();
  }
}
