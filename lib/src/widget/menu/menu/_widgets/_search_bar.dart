part of '../myoro_menu.dart';

/// Search [MyoroInput] of the [MyoroMenu].
final class _SearchBar<T> extends StatelessWidget {
  final MyoroMenuViewModel<T> _viewModel;

  const _SearchBar(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return Padding(
      padding: themeExtension.searchBarPadding,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          inputStyle: themeExtension.searchBarInputStyle,
          autofocus: true,
          onChanged: _viewModel.search,
        ),
      ),
    );
  }
}
