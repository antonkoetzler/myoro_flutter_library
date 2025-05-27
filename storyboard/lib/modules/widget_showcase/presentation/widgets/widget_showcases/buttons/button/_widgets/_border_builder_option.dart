part of '../myoro_button_widget_showcase.dart';

/// [MyoroButtonConfiguration.borderBuilder] option of [MyoroButtonWidgetShowcase].
final class _BorderBuilderOption extends StatelessWidget {
  const _BorderBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      checkboxConfiguration: MyoroCheckboxConfiguration(
        label: 'Border builder',
        onChanged: (value) => viewModel.borderBuilderEnabled = value,
      ),
      idleOnChanged: (color) => viewModel.idleBorderColor = color,
      hoverOnChanged: (color) => viewModel.hoverBorderColor = color,
      tapOnChanged: (color) => viewModel.tapBorderColor = color,
    );
  }
}
