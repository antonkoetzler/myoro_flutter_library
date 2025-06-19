part of '../myoro_menu_widget_showcase.dart';

/// [MyoroMenuConfiguration.borderRadius] option of [MyoroMenuWidgetShowcase].
final class _BorderRadiusOption extends StatelessWidget {
  const _BorderRadiusOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseViewModel>();

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
