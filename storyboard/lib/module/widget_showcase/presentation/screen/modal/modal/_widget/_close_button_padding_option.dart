part of '../myoro_modal_widget_showcase.dart';

/// [MyoroModalConfiguration.closeButtonPadding] option of [MyoroModalWidgetShowcase].
final class _CloseButtonPaddingOption extends StatelessWidget {
  const _CloseButtonPaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        paddingOnChanged: (padding) => viewModel.state.closeButtonPadding = padding,
        checkboxOnChanged: (enabled, padding) => viewModel.state.closeButtonPadding = enabled ? padding : null,
      ),
    );
  }
}
