part of '../myoro_date_picker_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDatePickerInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDatePickerInputWidgetShowcaseViewModel>();
    return MyoroDatePickerInput(configuration: viewModel.configuration(context, const _Suffix()));
  }
}
