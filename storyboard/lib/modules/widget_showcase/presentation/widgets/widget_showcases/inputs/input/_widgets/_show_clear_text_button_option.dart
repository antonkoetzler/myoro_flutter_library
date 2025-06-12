part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.showClearTextButton] of [MyoroInputWidgetShowcase].
final class _ShowClearTextButtonOption extends StatelessWidget {
  const _ShowClearTextButtonOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show clear text button?',
        onChanged: (value) => viewModel.state.showClearTextButton = value,
      ),
    );
  }
}
