part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuThemeExtension.searchBarInputStyle] option of [MyoroMenusWidgetShowcaseScreen].
final class _SearchBarInputStyleOption extends StatelessWidget {
  const _SearchBarInputStyleOption();

  static const _styles = {
    'none': MyoroInputStyleEnum.none,
    'underlined': MyoroInputStyleEnum.underlined,
    'outlined': MyoroInputStyleEnum.outlined,
  };

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();

    return MyoroSingleSelectionDropdown<MyoroInputStyleEnum>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: 'Search bar input style',
        selectedItemBuilder:
            (style) =>
                _styles.entries
                    .firstWhere(
                      (entry) => entry.value == style,
                      orElse: () => const MapEntry('custom', MyoroInputStyleEnum.outlined),
                    )
                    .key,
        onChanged: (style) => viewModel.state.searchBarInputStyle = style,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: () => _styles.values.toSet(),
          selectedItem: viewModel.state.searchBarInputStyle,
          itemBuilder: (style) {
            final name = _styles.entries.firstWhere((entry) => entry.value == style).key;
            return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: name));
          },
        ),
      ),
    );
  }
}
