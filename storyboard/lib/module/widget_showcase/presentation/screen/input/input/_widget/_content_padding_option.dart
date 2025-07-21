part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.contentPadding] option of [MyoroInputWidgetShowcaseScreen].
final class _ContentPaddingOption extends StatelessWidget {
  const _ContentPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        paddingOnChanged: (padding) => viewModel.state.contentPadding = padding,
        checkboxOnChanged: (enabled, padding) => viewModel.state.contentPadding = enabled ? padding : null,
      ),
    );
  }
}
