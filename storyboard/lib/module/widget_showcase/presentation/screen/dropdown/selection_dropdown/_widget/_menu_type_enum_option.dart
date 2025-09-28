part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [MyoroSelectionDropdownConfiguration.menuTypeEnum] of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _MenuTypeEnumOption extends StatelessWidget {
  const _MenuTypeEnumOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroDropdownMenuTypeEnumWidgetShowcaseOption(
      selectedItem: viewModel.state.menuTypeEnum,
      onChanged: (item) => viewModel.state.menuTypeEnum = item,
    );
  }
}
