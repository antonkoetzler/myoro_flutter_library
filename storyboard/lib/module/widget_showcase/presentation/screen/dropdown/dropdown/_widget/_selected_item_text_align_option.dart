part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.selectedItemTextAlign] option of [MyoroDropdownWidgetShowcaseScreen].
final class _SelectedItemTextAlignOption extends StatelessWidget {
  const _SelectedItemTextAlignOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();

    return TextAlignWidgetShowcaseOption(
      initiallySelectedValue: viewModel.state.selectedItemTextAlign,
      allowItemClearing: false,
      onChanged: (textAlign) => viewModel.state.selectedItemTextAlign = textAlign!,
    );
  }
}
