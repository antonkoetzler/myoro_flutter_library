part of '../bundle/myoro_menu_bundle.dart';

/// Search [MyoroInput] of the [MyoroMenu].
final class _SearchBar<T, C extends _C<T>> extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final searchBarPadding = themeExtension.searchBarPadding ?? EdgeInsets.zero;
    final searchBarInputStyle =
        themeExtension.searchBarInputStyle ?? MyoroInputConfiguration.inputStyleDefaultValue;

    final viewModel = context.read<MyoroMenuViewModel<T, C>>();

    return Padding(
      padding: searchBarPadding,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          inputStyle: searchBarInputStyle,
          autofocus: true,
          onChanged: viewModel.search,
        ),
      ),
    );
  }
}
