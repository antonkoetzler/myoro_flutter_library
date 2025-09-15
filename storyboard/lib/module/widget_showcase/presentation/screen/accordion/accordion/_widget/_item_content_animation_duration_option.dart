part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemContentAnimationDuration] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemContentAnimationDurationOption extends StatelessWidget {
  const _ItemContentAnimationDurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return MyoroInput.number(
      max: 5000,
      configuration: MyoroInputConfiguration(
        label: 'Item content animation duration (ms)',
        placeholder: 'Duration in milliseconds',
        onChanged: (text) {
          final milliseconds = int.tryParse(text);
          if (milliseconds != null) {
            viewModel.state.itemContentAnimationDuration = Duration(milliseconds: milliseconds);
          }
        },
      ),
    );
  }
}
