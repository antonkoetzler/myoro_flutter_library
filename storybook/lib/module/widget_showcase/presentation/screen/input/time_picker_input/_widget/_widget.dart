part of '../myoro_time_picker_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTimePickerInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return MyoroTimePickerInput(
      onChanged:
          (t) => context.showSnackBar(
            snackBar: MyoroSnackBar(configuration: MyoroSnackBarConfiguration(message: 'Time changed: $t')),
          ),
    );
  }
}
