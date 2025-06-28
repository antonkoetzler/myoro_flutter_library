part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.backgroundColorBuilder] option of [MyoroButtonWidgetShowcaseScreen].
final class _BackgroundColorBuilderOption extends StatelessWidget {
  const _BackgroundColorBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      configuration: MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration(
        label: 'Background color builder',
        enabled: viewModel.state.backgroundColorBuilderEnabled,
        checkboxOnChanged: (value) => viewModel.state.backgroundColorBuilderEnabled = value,
        initiallySelectedIdleColor: viewModel.state.idleBackgroundColor,
        idleOnChanged: (color) => viewModel.state.idleBackgroundColor = color,
        initiallySelectedHoverColor: viewModel.state.hoverBackgroundColor,
        hoverOnChanged: (color) => viewModel.state.hoverBackgroundColor = color,
        initiallySelectedTapColor: viewModel.state.tapBackgroundColor,
        tapOnChanged: (color) => viewModel.state.tapBackgroundColor = color,
      ),
    );
  }
}
