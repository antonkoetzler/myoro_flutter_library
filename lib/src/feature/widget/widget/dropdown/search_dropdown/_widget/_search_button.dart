part of '../widget/myoro_search_dropdown.dart';

/// Search button of the [MyoroSearchDropdown].
final class _SearchButton<T> extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchDropdownThemeExtension>();
    final style = context.read<MyoroSearchDropdownStyle>();
    final searchButtonIconSize = style.searchButtonIconSize ?? themeExtension.searchButtonIconSize;
    final searchButtonIcon = style.searchButtonIcon ?? themeExtension.searchButtonIcon;

    final viewModel = context.read<MyoroSearchDropdownViewModel<T>>();
    final state = viewModel.state;
    final requestController = state.requestController;
    final fetch = requestController.fetch;

    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().bordered(context).copyWith(iconSize: searchButtonIconSize),
      onTapUp: (_, _) => fetch(),
      icon: searchButtonIcon,
    );
  }
}
