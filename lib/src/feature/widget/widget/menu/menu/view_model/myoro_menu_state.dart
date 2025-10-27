part of 'myoro_menu_view_model.dart';

/// State of [MyoroMenuController].
class MyoroMenuState<T> {
  /// Default constructor.
  MyoroMenuState(this.request, this.selectedItems, this.onEndReachedRequest, this.searchCallback, this.itemBuilder);

  /// Request.
  final MyoroMenuRequest<T> request;

  /// Selected items.
  final Set<T> selectedItems;

  /// On end reached request.
  final MyoroMenuOnEndReachedRequest<T>? onEndReachedRequest;

  /// Search callback.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// Loaded items in the [MyoroMenu].
  final _itemsRequestController = MyoroRequestController<Set<T>>();

  /// Queried items in the [MyoroMenu].
  final _queriedItemsController = ValueNotifier<Set<T>?>(null);

  /// To call [MyoroMenuConfiguration.onEndReachedRequest].
  final _scrollController = ScrollController();

  /// Position of [_scrollController] before [MyoroMenu] was refreshed.
  double? onEndReachedPosition;

  /// Dispose function.
  void dispose() {
    _itemsRequestController.dispose();
    _queriedItemsController.dispose();
    _scrollController.dispose();
  }

  /// [_itemsRequestController] getter.
  MyoroRequestController<Set<T>> get itemsRequestController {
    return _itemsRequestController;
  }

  /// [_queriedItemsController] getter.
  ValueNotifier<Set<T>?> get queriedItemsController {
    return _queriedItemsController;
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

  /// [_itemsRequestController] setter.
  set itemsRequest(MyoroRequest<Set<T>> itemsRequest) {
    _itemsRequestController.value = itemsRequest;
  }

  /// [_queriedItemsController] setter.
  set queriedItems(Set<T>? queriedItems) {
    _queriedItemsController.value = queriedItems;
  }
}
