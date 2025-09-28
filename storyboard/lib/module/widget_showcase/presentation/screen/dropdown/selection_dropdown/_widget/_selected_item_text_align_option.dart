part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroSelectionDropdownConfiguration.selectedItemTextAlign] option of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _SelectedItemTextAlignOption extends StatelessWidget {
  const _SelectedItemTextAlignOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return TextAlignWidgetShowcaseOption(
      selectedValue: viewModel.state.selectedItemTextAlign,
      allowItemClearing: false,
      onChanged: (textAlign) => viewModel.state.selectedItemTextAlign = textAlign!,
    );
  }
}
