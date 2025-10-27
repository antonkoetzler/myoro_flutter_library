part of 'myoro_menu_view_model.dart';

/// State of [MyoroMenuViewModel].
class MyoroMenuState<T> {
  /// Default constructor.
  MyoroMenuState(this.searchCallback, this.items, this.selectedItems, this.itemBuilder);

  /// Search callback.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Items.
  final Set<T>? items;

  /// Selected items.
  final Set<T> selectedItems;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// [ScrollController] of the item listing.
  final _scrollController = ScrollController();

  /// Dispose function.
  void dispose() {
    _scrollController.dispose();
  }

  /// [_scrollController] getter.
  ScrollController get scrollController {
    return _scrollController;
  }
}
