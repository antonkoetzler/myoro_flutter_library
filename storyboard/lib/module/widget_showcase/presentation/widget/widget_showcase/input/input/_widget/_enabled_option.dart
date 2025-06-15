part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.enabled] option of [MyoroInputWidgetShowcase].
final class _EnabledOption extends StatelessWidget {
  const _EnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enabled?',
        onChanged: (value) => viewModel.state.enabled = value,
      ),
    );
  }
}
