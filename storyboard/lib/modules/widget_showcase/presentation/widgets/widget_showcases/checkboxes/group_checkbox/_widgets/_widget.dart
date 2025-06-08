part of '../myoro_group_checkbox_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroGroupCheckboxWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroGroupCheckbox(
          controller: MyoroGroupCheckboxController(
            checkboxes: {
              for (int i = 0; i < faker.randomGenerator.integer(20); i++) ...{
                'Checkbox #$i': faker.randomGenerator.boolean(),
              },
            },
          ),
          configuration: MyoroGroupCheckboxConfiguration(
            direction: viewModel.direction,
            spacing: viewModel.spacing,
            runSpacing: viewModel.runSpacing,
            onChanged: (key, checkboxes) => viewModel.onChanged(context, key, checkboxes),
          ),
        );
      },
    );
  }
}
