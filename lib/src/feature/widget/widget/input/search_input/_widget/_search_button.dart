part of '../myoro_search_input.dart';

/// Suffix search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(BuildContext context) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final style = context.read<MyoroSearchInputStyle>();
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();

    return MyoroButton(
      configuration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp(viewModel)),
      style: const MyoroButtonStyle().bordered(context),
      builder: (_, _) => _itemsRequest.status.isLoading
          ? MyoroCircularLoader(
              style: MyoroCircularLoaderStyle(
                size: style.searchButtonLoadingSize ?? inputThemeExtension.searchButtonLoadingSize,
              ),
            )
          : Icon(style.searchButtonIcon ?? inputThemeExtension.searchButtonIcon),
    );
  }

  void _onTapUp(MyoroSearchInputViewModel viewModel) {
    if (!viewModel.itemsRequest.status.isLoading) viewModel.itemsRequestNotifier.fetch();
  }
}
