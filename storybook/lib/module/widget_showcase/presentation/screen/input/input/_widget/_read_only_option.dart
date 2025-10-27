part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.readOnly] option of [MyoroInputWidgetShowcaseScreen].
final class _ReadOnlyOption extends StatelessWidget {
  const _ReadOnlyOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Read only?', onChanged: (value) => state.readOnly = value);
  }
}
