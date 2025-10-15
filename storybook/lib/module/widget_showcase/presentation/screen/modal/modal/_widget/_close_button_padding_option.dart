part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.closeButtonPadding] option of [MyoroModalWidgetShowcaseScreen].
final class _CloseButtonPaddingOption extends StatelessWidget {
  const _CloseButtonPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        paddingOnChanged: (padding) => viewModel.state.closeButtonPadding = padding,
        checkboxOnChanged: (enabled, padding) => viewModel.state.closeButtonPadding = enabled ? padding : null,
      ),
    );
  }
}
