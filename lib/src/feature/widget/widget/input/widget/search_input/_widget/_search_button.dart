part of '../myoro_search_input.dart';

/// Suffix search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(BuildContext context) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final secondaryButtonThemeExtension = MyoroButtonSecondaryVariantThemeExtension.builder(
      context.isDarkMode,
      context.colorScheme,
    );
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();

    final circularLoaderThemeExtension = MyoroCircularLoaderThemeExtension.builder(context.colorScheme);

    return MyoroButton(
      configuration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp(viewModel)),
      themeExtension: MyoroButtonThemeExtension.fromVariant(secondaryButtonThemeExtension),
      builder: (_, _) => _itemsRequest.status.isLoading
          ? MyoroCircularLoader(
              themeExtension: circularLoaderThemeExtension.copyWith(size: inputThemeExtension.searchButtonLoadingSize),
            )
          : Icon(inputThemeExtension.searchButtonIcon),
    );
  }

  void _onTapUp(MyoroSearchInputViewModel viewModel) {
    if (!viewModel.itemsRequest.status.isLoading) viewModel.itemsRequestNotifier.fetch();
  }
}
