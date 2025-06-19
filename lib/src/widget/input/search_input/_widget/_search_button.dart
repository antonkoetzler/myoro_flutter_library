part of '../myoro_search_input.dart';

/// Suffix search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSearchInputViewModel>();

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

    return viewModel.itemsRequest.status.isLoading
        ? MyoroCircularLoader(
          configuration: MyoroCircularLoaderConfiguration(size: themeExtension.searchButtonLoadingSize),
        )
        : Icon(themeExtension.searchButtonIcon);
  }
}
