part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.borderBuilder] option of [MyoroButtonWidgetShowcaseScreen].
final class _BorderBuilderOption extends StatelessWidget {
  const _BorderBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      checkboxConfiguration: MyoroCheckboxConfiguration(
        label: 'Border builder',
        onChanged: (value) => viewModel.state.borderBuilderEnabled = value,
      ),
      idleOnChanged: (color) => viewModel.state.idleBorderColor = color,
      hoverOnChanged: (color) => viewModel.state.hoverBorderColor = color,
      tapOnChanged: (color) => viewModel.state.tapBorderColor = color,
    );
  }
}
