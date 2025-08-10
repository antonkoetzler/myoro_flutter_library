part of '../myoro_search_input.dart';

/// Suffix search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();

    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
        onTapUp: (_) => _onTapUp(viewModel),
      ),
      builder: (_, _) => _builder(context, viewModel),
    );
  }

  void _onTapUp(MyoroSearchInputViewModel viewModel) {
    if (!viewModel.itemsRequest.status.isLoading) viewModel.itemsRequestController.fetch();
  }

  Widget _builder(BuildContext context, MyoroSearchInputViewModel viewModel) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

    return _itemsRequest.status.isLoading
        ? MyoroCircularLoader(
            configuration: MyoroCircularLoaderConfiguration(size: themeExtension.searchButtonLoadingSize),
          )
        : Icon(themeExtension.searchButtonIcon);
  }
}
