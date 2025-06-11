part of '../myoro_dropdown_widget_showcase.dart';

/// [MyoroDropdownConfiguration.selectedItemTextAlign] option of [MyoroDropdownWidgetShowcase].
final class _SelectedItemTextAlignOption extends StatelessWidget {
  const _SelectedItemTextAlignOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseViewModel>();

    return TextAlignWidgetShowcaseOption(
      initiallySelectedTextAlign: viewModel.state.selectedItemTextAlign,
      allowItemClearing: false,
      onChanged: (textAlign) => viewModel.state.selectedItemTextAlign = textAlign!,
    );
  }
}
