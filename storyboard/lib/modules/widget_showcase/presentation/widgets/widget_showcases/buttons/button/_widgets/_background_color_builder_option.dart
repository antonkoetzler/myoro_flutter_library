part of '../myoro_button_widget_showcase.dart';

/// [MyoroButtonConfiguration.backgroundColorBuilder] option of [MyoroButtonWidgetShowcase].
final class _BackgroundColorBuilderOption extends StatelessWidget {
  const _BackgroundColorBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();

    return MyoroTapStatusEnumColorBuilderWidgetShowcaseOption(
      checkboxConfiguration: MyoroCheckboxConfiguration(
        label: 'Background color builder',
        onChanged: (value) => viewModel.backgroundColorBuilderEnabled = value,
      ),
      idleOnChanged: (color) => viewModel.idleBackgroundColor = color,
      hoverOnChanged: (color) => viewModel.hoverBackgroundColor = color,
      tapOnChanged: (color) => viewModel.tapBackgroundColor = color,
    );
  }
}
