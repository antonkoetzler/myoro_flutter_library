part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.validation] option of [MyoroInputWidgetShowcaseScreen].
final class _ValidationOption extends StatelessWidget {
  const _ValidationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enable validation?',
        onChanged: (value) => viewModel.state.validationEnabled = value,
      ),
    );
  }
}
