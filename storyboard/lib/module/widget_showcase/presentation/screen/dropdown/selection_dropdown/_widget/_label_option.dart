part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroSelectionDropdownConfiguration.label] option of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _LabelOption extends StatelessWidget {
  const _LabelOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(label: 'Label', onChanged: (text) => viewModel.state.label = text),
    );
  }
}
