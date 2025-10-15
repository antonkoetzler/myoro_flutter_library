part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.padding] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        enabled: viewModel.state.padding != null,
        checkboxOnChanged: (enabled, padding) => viewModel.state.padding = enabled ? padding : null,
        paddingOnChanged: (padding) => viewModel.state.padding = padding,
      ),
    );
  }
}
