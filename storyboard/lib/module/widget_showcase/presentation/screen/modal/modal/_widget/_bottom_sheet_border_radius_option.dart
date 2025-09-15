part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalThemeExtension.bottomSheetBorderRadius] option of [MyoroModalWidgetShowcaseScreen].
final class _BottomSheetBorderRadiusOption extends StatelessWidget {
  const _BottomSheetBorderRadiusOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Bottom sheet border radius',
        initiallyEnabled: viewModel.state.bottomSheetBorderRadius != null,
        initialValue: viewModel.state.bottomSheetBorderRadius?.topLeft.x ?? 8.0,
        sliderOnChanged:
            (value) =>
                viewModel.state.bottomSheetBorderRadius = BorderRadius.only(
                  topLeft: Radius.circular(value),
                  topRight: Radius.circular(value),
                ),
        checkboxOnChanged:
            (enabled, value) =>
                viewModel.state.bottomSheetBorderRadius =
                    enabled
                        ? BorderRadius.only(
                          topLeft: Radius.circular(value),
                          topRight: Radius.circular(value),
                        )
                        : null,
      ),
    );
  }
}
