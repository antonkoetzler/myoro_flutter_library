part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.enabled] option of [MyoroInputWidgetShowcaseScreen].
final class _EnabledOption extends StatelessWidget {
  const _EnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enabled?',
        onChanged: (value) => viewModel.state.enabled = value,
      ),
    );
  }
}
