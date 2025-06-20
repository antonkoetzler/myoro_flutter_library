part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.showClearTextButton] of [MyoroInputWidgetShowcaseScreen].
final class _ShowClearTextButtonOption extends StatelessWidget {
  const _ShowClearTextButtonOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show clear text button?',
        onChanged: (value) => viewModel.state.showClearTextButton = value,
      ),
    );
  }
}
