part of '../myoro_date_picker_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroDatePickerInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final inputViewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    return MyoroDatePickerInput(configuration: inputViewModel.configuration(context, const _Suffix()));
  }
}
