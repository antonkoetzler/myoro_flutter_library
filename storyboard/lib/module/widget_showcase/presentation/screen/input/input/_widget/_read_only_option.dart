part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.readOnly] option of [MyoroInputWidgetShowcase].
final class _ReadOnlyOption extends StatelessWidget {
  const _ReadOnlyOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Read only?',
        onChanged: (value) => viewModel.state.readOnly = value,
      ),
    );
  }
}
