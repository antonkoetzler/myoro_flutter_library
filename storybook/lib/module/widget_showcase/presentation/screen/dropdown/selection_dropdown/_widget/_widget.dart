part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// Widget of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = themeExtension.spacing;
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return Column(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyoroSingleSelectionDropdown(
            configuration: MyoroSingleSelectionDropdownConfiguration(
              dropdownType: viewModel.state.singleDropdownType,
              menuConfiguration: MyoroSingleMenuConfiguration(
                request: () => {'Start'},
                itemBuilder: (item) {
                  return MyoroMenuIconTextButtonItem(
                    configuration: MyoroIconTextButtonConfiguration(
                      textConfiguration: MyoroTextConfiguration(text: item),
                    ),
                  );
                },
              ),
              selectedItemBuilder: (item) => item,
            ),
          ),
        ),
        Flexible(
          child: MyoroMultiSelectionDropdown(
            configuration: MyoroMultiSelectionDropdownConfiguration(
              dropdownType: viewModel.state.multiDropdownType,
              menuConfiguration: MyoroMultiMenuConfiguration(
                request: () => {'Start'},
                itemBuilder: (item) {
                  return MyoroMenuIconTextButtonItem(
                    configuration: MyoroIconTextButtonConfiguration(
                      textConfiguration: MyoroTextConfiguration(text: item),
                    ),
                  );
                },
              ),
              selectedItemBuilder: (item) => item,
            ),
          ),
        ),
      ],
    );
  }
}
