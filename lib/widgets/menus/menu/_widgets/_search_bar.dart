part of '../myoro_menu.dart';

/// Search [MyoroInput] of the [MyoroMenu].
final class _SearchBar<T> extends StatelessWidget {
  final MyoroMenuController<T> _controller;

  const _SearchBar(this._controller);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();

    return Padding(
      padding: themeExtension.searchBarPadding,
      child: MyoroInput(
        configuration: MyoroInputConfiguration(
          inputStyle: themeExtension.searchBarInputStyle,
          autofocus: true,
          onChanged: _controller.search,
        ),
      ),
    );
  }
}
