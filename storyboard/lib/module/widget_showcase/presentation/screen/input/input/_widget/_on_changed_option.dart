part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.onChanged] option of [MyoroInputWidgetShowcase].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Callback when text is changed?',
        onChanged: (value) => viewModel.state.onChangedEnabled = value,
      ),
    );
  }
}
