part of '../myoro_group_checkbox_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroGroupCheckboxWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseScreenViewModel>();
    final buildConfiguration = viewModel.buildConfiguration;
    final buildStyle = viewModel.buildStyle;

    return MyoroGroupCheckbox(
      configuration: buildConfiguration(context),
      style: buildStyle(context),
      checkboxes: {
        for (int i = 0; i < faker.randomGenerator.integer(20); i++) ...{
          'Checkbox #$i': faker.randomGenerator.boolean(),
        },
      },
    );
  }
}
