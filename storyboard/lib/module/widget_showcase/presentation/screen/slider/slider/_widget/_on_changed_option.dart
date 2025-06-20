part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.onChanged] option of [MyoroSliderWidgetShowcaseScreen].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show snackbar when the value is changed?',
        onChanged: (value) => viewModel.state.onChangedEnabled = value,
      ),
    );
  }
}
