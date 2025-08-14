part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.selectedItemTextAlign] option of [MyoroDropdownsWidgetShowcaseScreen].
final class _SelectedItemTextAlignOption extends StatelessWidget {
  const _SelectedItemTextAlignOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return TextAlignWidgetShowcaseOption(
      selectedValue: viewModel.state.selectedItemTextAlign,
      allowItemClearing: false,
      onChanged: (textAlign) => viewModel.state.selectedItemTextAlign = textAlign!,
    );
  }
}
