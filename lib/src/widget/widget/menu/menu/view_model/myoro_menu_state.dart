part of 'myoro_menu_view_model.dart';

/// State of [MyoroMenuController].
class MyoroMenuState<T> {
  MyoroMenuState(this.configuration) {
    _itemsRequestController.requestCallback = configuration.request;
  }

  /// Configuration.
  final MyoroMenuConfiguration<T> configuration;

  /// Loaded items in the [MyoroMenu].
  final _itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequestController<Set<T>> get itemsRequestController => _itemsRequestController;
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestController.value;
  Set<T> get items => _itemsRequestController.value.data ?? <T>{};

  /// Querired items in the [MyoroMenu].
  final queriedItemsController = ValueNotifier<Set<T>?>(null);
  Set<T>? get queriedItems => queriedItemsController.value;

  /// Position of [_scrollController] before [MyoroMenu] was refreshed.
  double? onEndReachedPosition;

  /// To call [MyoroMenuConfiguration.onEndReachedRequest].
  final _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  /// Dispose function.
  void dispose() {
    _itemsRequestController.dispose();
    queriedItemsController.dispose();
    _scrollController.dispose();
  }
}
