part of '../myoro_search_input.dart';

/// Suffix search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  final MyoroSearchInputController<T> _controller;
  MyoroRequestController<Set<T>> get _itemsRequestController => _controller.state.itemsRequestController;
  MyoroRequest<Set<T>> get _itemsRequest => _controller.state.itemsRequest;
  MyoroRequestEnum get _itemsRequestStatus => _itemsRequest.status;

  const _SearchButton(this._controller);

  @override
  Widget build(BuildContext context) {
    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
        onTapUp: _onTapUp,
      ),
      builder: _builder,
    );
  }

  void _onTapUp(_) {
    if (!_itemsRequestStatus.isLoading) _itemsRequestController.fetch();
  }

  Widget _builder(BuildContext context, __) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return _itemsRequestStatus.isLoading
        ? MyoroCircularLoader(
          configuration: MyoroCircularLoaderConfiguration(size: themeExtension.searchButtonLoadingSize),
        )
        : Icon(themeExtension.searchButtonIcon);
  }
}
