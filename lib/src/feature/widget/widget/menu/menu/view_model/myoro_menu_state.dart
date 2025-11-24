part of 'myoro_menu_view_model.dart';

/// State of [MyoroMenuViewModel].
class MyoroMenuState<T> {
  /// Default constructor.
  MyoroMenuState(this.searchCallback, this.items, this.selectedItems, this.itemBuilder, this.footer);

  /// [MyoroMenu.searchCallback].
  MyoroMenuSearchCallback<T>? searchCallback;

  /// [MyoroMenu.items].
  Set<T>? items;

  /// [MyoroMenu.selectedItems].
  Set<T> selectedItems;

  /// [MyoroMenu.itemBuilder].
  MyoroMenuItemBuilder<T> itemBuilder;

  /// [MyoroMenu.footer].
  Widget? footer;

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
