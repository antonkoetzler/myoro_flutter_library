part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.border] option of [MyoroInputWidgetShowcase].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Custom border enabled?',
        onChanged: (value) => viewModel.state.borderEnabled = value,
      ),
    );
  }
}
