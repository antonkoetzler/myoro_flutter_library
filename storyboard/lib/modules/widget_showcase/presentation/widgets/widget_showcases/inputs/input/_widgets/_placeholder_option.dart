part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.placeholder] option of [MyoroInputWidgetShowcase].
final class _PlaceholderOption extends StatelessWidget {
  const _PlaceholderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Placeholder',
        onChanged: (text) => viewModel.state.placeholder = text,
      ),
    );
  }
}
