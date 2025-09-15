part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonArrowAnimationDuration] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonArrowAnimationDurationOption extends StatelessWidget {
  const _ItemTitleButtonArrowAnimationDurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return MyoroInput.number(
      max: 5000,
      configuration: MyoroInputConfiguration(
        label: 'Arrow animation duration (ms)',
        placeholder: 'Duration in milliseconds',
        onChanged: (text) {
          final milliseconds = int.tryParse(text);
          if (milliseconds != null) {
            viewModel.state.itemTitleButtonArrowAnimationDuration = Duration(
              milliseconds: milliseconds,
            );
          }
        },
      ),
    );
  }
}
