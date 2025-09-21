part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.borderBuilder] option of [MyoroButtonWidgetShowcaseScreen].
final class _BorderBuilderOption extends StatelessWidget {
  const _BorderBuilderOption();

  @override
  Widget build(context) {
    return const Text('TODO');

    // return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
    //   configuration: MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration(
    //     label: 'Border builder',
    //     checkboxOnChanged: (value) => viewModel.state.borderBuilderEnabled = value,
    //     idleOnChanged: (color) => viewModel.state.idleBorderColor = color,
    //     selectedHoverColor: viewModel.state.hoverBorderColor,
    //     hoverOnChanged: (color) => viewModel.state.hoverBorderColor = color,
    //     selectedTapColor: viewModel.state.tapBorderColor,
    //     tapOnChanged: (color) => viewModel.state.tapBorderColor = color,
    //   ),
    // );
  }
}
