part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.borderBuilder] option of [MyoroButtonWidgetShowcaseScreen].
final class _BorderBuilderOption extends StatelessWidget {
  const _BorderBuilderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      configuration: MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration(
        label: 'Border builder',
        enabled: viewModel.state.borderBuilderEnabled,
        checkboxOnChanged: (value) => viewModel.state.borderBuilderEnabled = value,
        initiallySelectedIdleColor: viewModel.state.idleBorderColor,
        idleOnChanged: (color) => viewModel.state.idleBorderColor = color,
        initiallySelectedHoverColor: viewModel.state.hoverBorderColor,
        hoverOnChanged: (color) => viewModel.state.hoverBorderColor = color,
        initiallySelectedTapColor: viewModel.state.tapBorderColor,
        tapOnChanged: (color) => viewModel.state.tapBorderColor = color,
      ),
    );
  }
}
