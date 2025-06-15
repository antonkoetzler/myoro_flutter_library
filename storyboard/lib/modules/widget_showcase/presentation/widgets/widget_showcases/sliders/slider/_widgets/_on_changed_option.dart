part of '../myoro_slider_widget_showcase.dart';

/// [MyoroSliderConfiguration.onChanged] option of [MyoroSliderWidgetShowcase].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show snackbar when the value is changed?',
        onChanged: (value) => viewModel.state.onChangedEnabled = value,
      ),
    );
  }
}
