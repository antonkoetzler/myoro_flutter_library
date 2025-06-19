part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.backgroundColorBuilder] option of [MyoroButtonWidgetShowcaseScreen].
final class _BackgroundColorBuilderOption extends StatelessWidget {
  const _BackgroundColorBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      checkboxConfiguration: MyoroCheckboxConfiguration(
        label: 'Background color builder',
        onChanged: (value) => viewModel.state.backgroundColorBuilderEnabled = value,
      ),
      idleOnChanged: (color) => viewModel.state.idleBackgroundColor = color,
      hoverOnChanged: (color) => viewModel.state.hoverBackgroundColor = color,
      tapOnChanged: (color) => viewModel.state.tapBackgroundColor = color,
    );
  }
}
