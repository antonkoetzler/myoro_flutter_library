part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionConfiguration.thumbVisibility] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ThumbVisibilityOption extends StatelessWidget {
  const _ThumbVisibilityOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show scrollbar thumb',
        value: viewModel.state.thumbVisibility,
        onChanged: (value) => viewModel.state.thumbVisibility = value,
      ),
    );
  }
}
