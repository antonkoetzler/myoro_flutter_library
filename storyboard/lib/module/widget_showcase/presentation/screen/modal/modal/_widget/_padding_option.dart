part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.padding] option of [MyoroModalWidgetShowcaseScreen].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        paddingOnChanged: (padding) => viewModel.state.padding = padding,
        checkboxOnChanged: (enabled, padding) => viewModel.state.padding = enabled ? padding : null,
      ),
    );
  }
}
