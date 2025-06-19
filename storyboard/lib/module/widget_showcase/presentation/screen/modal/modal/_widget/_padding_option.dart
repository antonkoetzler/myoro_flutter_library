part of '../myoro_modal_widget_showcase.dart';

/// [MyoroModalConfiguration.padding] option of [MyoroModalWidgetShowcase].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        paddingOnChanged: (padding) => viewModel.state.padding = padding,
        checkboxOnChanged: (enabled, padding) => viewModel.state.padding = enabled ? padding : null,
      ),
    );
  }
}
