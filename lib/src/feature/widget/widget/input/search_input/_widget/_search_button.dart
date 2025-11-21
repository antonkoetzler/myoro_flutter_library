part of '../widget/myoro_search_input.dart';

/// Search button of the [MyoroSearchInput].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final style = context.read<MyoroSearchInputStyle>();
    final searchButtonIconConfiguration =
        style.searchButtonIconConfiguration ?? themeExtension.searchButtonIconConfiguration;

    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final state = viewModel.state;
    final requestController = state.requestController;
    final fetch = requestController.fetch;

    return MyoroIconTextButton(
      onTapUp: (_, _) => fetch(),
      iconConfiguration: searchButtonIconConfiguration,
      style: const MyoroIconTextButtonStyle().bordered(context),
    );
  }
}
