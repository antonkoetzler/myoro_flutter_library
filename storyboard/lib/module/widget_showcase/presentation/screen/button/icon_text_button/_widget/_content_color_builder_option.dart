part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.invert] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _ContentColorBuilderOption extends StatelessWidget {
  const _ContentColorBuilderOption();

  @override
  Widget build(context) {
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
        selectedIdleColor: idleContentColor,
        idleOnChanged: (color) => state.idleContentColor = color,
        selectedHoverColor: hoverContentColor,
        hoverOnChanged: (color) => state.hoverContentColor = color,
        selectedTapColor: tapContentColor,
        tapOnChanged: (color) => state.tapContentColor = color,
      ),
    );
  }
}
