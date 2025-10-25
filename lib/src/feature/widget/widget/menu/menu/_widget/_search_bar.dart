part of '../bundle/myoro_menu_bundle.dart';

/// Search [MyoroInput] of the [MyoroMenu].
final class _SearchBar<T, C extends _C<T>> extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final searchBarPadding = style.searchBarPadding ?? themeExtension.searchBarPadding ?? EdgeInsets.zero;
    final searchBarInputStyle =
        style.searchBarInputStyle ?? themeExtension.searchBarInputStyle ?? MyoroInput.inputStyleDefaultValue;

    final viewModel = context.read<MyoroMenuViewModel<T, C>>();

    return Padding(
      padding: searchBarPadding,
      child: MyoroInput(inputStyle: searchBarInputStyle, autofocus: true, onChanged: viewModel.search),
    );
  }
}
