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
            dropdownType: viewModel.state.singleDropdownType,
            items: List.generate(faker.randomGenerator.integer(10), (i) => 'Item #$i').toSet(),
            itemBuilder: (_, item) {
              return MyoroMenuIconTextButtonItem(text: item);
            },
            selectedItemBuilder: (item) => item,
          ),
        ),
        Flexible(
          child: MyoroMultiSelectionDropdown(
            dropdownType: viewModel.state.multiDropdownType,
            items: List.generate(faker.randomGenerator.integer(10), (i) => 'Item #$i').toSet(),
            itemBuilder: (_, item) {
              return MyoroMenuIconTextButtonItem(text: item);
            },
            selectedItemBuilder: (item) => item,
          ),
        ),
      ],
    );
  }
}
