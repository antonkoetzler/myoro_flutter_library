part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.clearTextButtonPadding] option of [MyoroInputWidgetShowcaseScreen].
final class _ClearTextButtonPaddingOption extends StatelessWidget {
  const _ClearTextButtonPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Clear text button padding',
        paddingOnChanged: (padding) => viewModel.state.clearTextButtonPadding = padding,
      ),
    );
  }
}
