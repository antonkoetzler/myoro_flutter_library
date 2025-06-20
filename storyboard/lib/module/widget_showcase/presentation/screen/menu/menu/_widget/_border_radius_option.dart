part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.borderRadius] option of [MyoroMenuWidgetShowcaseScreen].
final class _BorderRadiusOption extends StatelessWidget {
  const _BorderRadiusOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Border radius.',
        sliderOnChanged: (value) {
          viewModel.state.borderRadius = BorderRadius.circular(value);
        },
        checkboxOnChanged: (enabled, value) {
          viewModel.state.borderRadius = BorderRadius.circular(enabled ? value : 0);
        },
      ),
    );
  }
}
