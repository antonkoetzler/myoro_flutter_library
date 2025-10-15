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
        selectedIdleColor: viewModel.state.borderIdleColor,
        idleOnChanged: (color) => viewModel.state.borderIdleColor = color,
        selectedHoverColor: viewModel.state.borderHoverColor,
        hoverOnChanged: (color) => viewModel.state.borderHoverColor = color,
        selectedTapColor: viewModel.state.borderTapColor,
        tapOnChanged: (color) => viewModel.state.borderTapColor = color,
      ),
    );
  }
}
