part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.readOnly] option of [MyoroInputWidgetShowcaseScreen].
final class _ReadOnlyOption extends StatelessWidget {
  const _ReadOnlyOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Read only?',
        onChanged: (value) => viewModel.state.readOnly = value,
      ),
    );
  }
}
