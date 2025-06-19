part of '../myoro_icon_text_button_widget_showcase.dart';

/// [MyoroIconTextButtonConfiguration.invert] option of [MyoroIconTextButtonWidgetShowcase].
final class _ContentColorBuilderOption extends StatelessWidget {
  const _ContentColorBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      checkboxConfiguration: MyoroCheckboxConfiguration(
        label: 'Content color',
        onChanged: (value) => viewModel.enableContentColorBuilder = value,
      ),
      idleOnChanged: (color) => viewModel.idleContentColor = color,
      hoverOnChanged: (color) => viewModel.hoverContentColor = color,
      tapOnChanged: (color) => viewModel.tapContentColor = color,
    );
  }
}
