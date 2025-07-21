part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.placeholder] option of [MyoroInputWidgetShowcaseScreen].
final class _PlaceholderOption extends StatelessWidget {
  const _PlaceholderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Placeholder',
        onChanged: (text) => viewModel.state.placeholder = text,
      ),
    );
  }
}
