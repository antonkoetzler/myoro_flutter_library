part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.validation] option of [MyoroInputWidgetShowcase].
final class _ValidationOption extends StatelessWidget {
  const _ValidationOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enable validation?',
        onChanged: (value) => viewModel.state.validationEnabled = value,
      ),
    );
  }
}
