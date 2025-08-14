part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.menuTypeEnum] of [MyoroDropdownsWidgetShowcaseScreen].
final class _MenuTypeEnumOption extends StatelessWidget {
  const _MenuTypeEnumOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownsWidgetShowcaseScreenViewModel>();

    return MyoroDropdownMenuTypeEnumWidgetShowcaseOption(
      selectedItem: viewModel.state.menuTypeEnum,
      onChanged: (item) => viewModel.state.menuTypeEnum = item,
    );
  }
}
