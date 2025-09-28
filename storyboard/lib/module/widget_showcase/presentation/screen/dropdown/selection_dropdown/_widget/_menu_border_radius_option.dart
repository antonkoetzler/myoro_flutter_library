part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroSelectionDropdownThemeExtension.menuBorderRadius] option of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _MenuBorderRadiusOption extends StatelessWidget {
  const _MenuBorderRadiusOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Menu border radius',
        enabled: viewModel.state.menuBorderRadius != null,
        value: viewModel.state.menuBorderRadius?.topLeft.x ?? 8.0,
        sliderOnChanged:
            (value) =>
                viewModel.state.menuBorderRadius = BorderRadius.only(
                  bottomLeft: Radius.circular(value),
                  bottomRight: Radius.circular(value),
                ),
        checkboxOnChanged:
            (enabled, value) =>
                viewModel.state.menuBorderRadius =
                    enabled
                        ? BorderRadius.only(bottomLeft: Radius.circular(value), bottomRight: Radius.circular(value))
                        : null,
      ),
    );
  }
}
