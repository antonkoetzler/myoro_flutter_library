part of '../widget/myoro_menu.dart';

/// Search [MyoroInput] of the [MyoroMenu].
final class _SearchBar<T> extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final searchBarPadding = style.searchBarPadding ?? themeExtension.searchBarPadding ?? EdgeInsets.zero;
    final searchBarInputStyle =
        style.searchBarInputStyle ?? themeExtension.searchBarInputStyle ?? MyoroInput.inputStyleDefaultValue;

    final viewModel = context.read<MyoroMenuViewModel<T>>();
    final searchBarOnChanged = viewModel.searchBarOnChanged;

    return Padding(
      padding: searchBarPadding,
      child: MyoroSearchBarInput(inputStyle: searchBarInputStyle, onChanged: searchBarOnChanged),
    );
  }
}
