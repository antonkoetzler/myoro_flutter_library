part of '../myoro_group_checkbox_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroGroupCheckboxWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupCheckboxWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        final style = viewModel.style;
        final direction = state.direction;
        final onChanged = viewModel.onChanged;

        return MyoroGroupCheckbox(
          style: style,
          direction: direction,
          onChanged: (key, checkboxes) => onChanged(context, key, checkboxes),
          checkboxes: {
            for (int i = 0; i < faker.randomGenerator.integer(20); i++) ...{
              'Checkbox #$i': faker.randomGenerator.boolean(),
            },
          },
        );
      },
    );
  }
}
