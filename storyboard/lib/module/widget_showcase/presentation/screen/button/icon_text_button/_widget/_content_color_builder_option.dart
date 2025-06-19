part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.invert] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _ContentColorBuilderOption extends StatelessWidget {
  const _ContentColorBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      checkboxConfiguration: MyoroCheckboxConfiguration(
        label: 'Content color',
        onChanged: (value) => viewModel.state.enableContentColorBuilder = value,
      ),
      idleOnChanged: (color) => viewModel.state.idleContentColor = color,
      hoverOnChanged: (color) => viewModel.state.hoverContentColor = color,
      tapOnChanged: (color) => viewModel.state.tapContentColor = color,
    );
  }
}
