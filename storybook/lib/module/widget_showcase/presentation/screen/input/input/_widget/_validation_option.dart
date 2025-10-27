part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.validation] option of [MyoroInputWidgetShowcaseScreen].
final class _ValidationOption extends StatelessWidget {
  const _ValidationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Enable validation?', onChanged: (value) => state.validationEnabled = value);
  }
}
