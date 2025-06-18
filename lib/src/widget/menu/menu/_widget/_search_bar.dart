part of '../myoro_menu.dart';

/// Search [MyoroInput] of the [MyoroMenu].
final class _SearchBar<T> extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final viewModel = context.read<MyoroMenuViewModel<T>>();

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
