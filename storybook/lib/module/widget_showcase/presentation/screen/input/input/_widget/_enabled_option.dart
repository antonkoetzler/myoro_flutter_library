part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.enabled] option of [MyoroInputWidgetShowcaseScreen].
final class _EnabledOption extends StatelessWidget {
  const _EnabledOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Enabled?', onChanged: (value) => state.enabled = value);
  }
}
