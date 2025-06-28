part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.invert] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _ContentColorBuilderOption extends StatelessWidget {
  const _ContentColorBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final enableContentColorBuilder = state.enableContentColorBuilder;
    final idleContentColor = state.idleContentColor;
    final hoverContentColor = state.hoverContentColor;
    final tapContentColor = state.tapContentColor;

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      configuration: MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration(
        label: 'Content color',
        enabled: enableContentColorBuilder,
        checkboxOnChanged: (value) => state.enableContentColorBuilder = value,
        initiallySelectedIdleColor: idleContentColor,
        idleOnChanged: (color) => state.idleContentColor = color,
        initiallySelectedHoverColor: hoverContentColor,
        hoverOnChanged: (color) => state.hoverContentColor = color,
        initiallySelectedTapColor: tapContentColor,
        tapOnChanged: (color) => state.tapContentColor = color,
      ),
    );
  }
}
