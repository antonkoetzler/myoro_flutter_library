part of '../myoro_time_picker_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTimePickerInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTimePickerInputWidgetShowcaseViewModel>();
    return MyoroTimePickerInput(configuration: viewModel.buildConfiguration(context, const _Suffix()));
  }
}
