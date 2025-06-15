part of '../myoro_date_picker_input_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDatePickerInputWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final inputViewModel = context.read<MyoroInputWidgetShowcaseViewModel>();
    return MyoroDatePickerInput(configuration: inputViewModel.configuration(context));
  }
}
