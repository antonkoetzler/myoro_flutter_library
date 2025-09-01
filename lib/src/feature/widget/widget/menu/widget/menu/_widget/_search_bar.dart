part of '../bundle/myoro_menu_bundle.dart';

/// Search [MyoroInput] of the [MyoroMenu].
final class _SearchBar<T, C extends _C<T>> extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final viewModel = context.read<MyoroMenuViewModel<T, C>>();

    return Padding(
      padding: themeExtension.searchBarPadding,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          inputStyle: themeExtension.searchBarInputStyle,
          autofocus: true,
          onChanged: viewModel.search,
        ),
      ),
    );
  }
}
