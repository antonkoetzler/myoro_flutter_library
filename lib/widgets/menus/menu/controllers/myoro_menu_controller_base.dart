import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMenu].
abstract class MyoroMenuControllerBase<T> {
  /// Configuration.
  MyoroMenuConfiguration<T> configuration;

  /// Loaded items in the [MyoroMenu].
  final _itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequestController<Set<T>> get itemsRequestController => _itemsRequestController;
  Set<T> get items => itemsRequestController.value.data ?? <T>{};

  /// Querired items in the [MyoroMenu].
  final queriedItemsNotifier = ValueNotifier<Set<T>?>(null);
  Set<T>? get queriedItems => queriedItemsNotifier.value;

  /// Position of [_scrollController] before [MyoroMenu] was refreshed.
  double? _onEndReachedPosition;
  double? get onEndReachedPosition => _onEndReachedPosition;
  @protected
  set onEndReachedPosition(double? onEndReachedPosition) => _onEndReachedPosition = onEndReachedPosition;

  /// To call [MyoroMenuConfiguration.onEndReachedRequest].
  final scrollController = ScrollController();

  MyoroMenuControllerBase(this.configuration) {
    _itemsRequestController.requestCallback = configuration.request;
  }

  /// Dispose function.
  void dispose() {
    _itemsRequestController.dispose();
    queriedItemsNotifier.dispose();
    scrollController.dispose();
  }

  /// Fetches the items of the [MyoroMenu].
  void fetch();

  /// Fetches extra items ([MyoroMenuConfiguration.onEndReachedRequest]).
  @protected
  void fetchExtra();

  /// Searches in [_items] given [query].
  void search(String query);

  /// Listener of [_scrollController].
  @protected
  void scrollControllerListener();
}
