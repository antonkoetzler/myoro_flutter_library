part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [MyoroDropdownConfiguration.menuTypeEnum] of [MyoroDropdownWidgetShowcaseScreen].
final class _MenuTypeEnumOption extends StatelessWidget {
  const _MenuTypeEnumOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseScreenViewModel>();

    return MyoroDropdownMenuTypeEnumWidgetShowcaseOption(
      selectedItem: viewModel.state.menuTypeEnum,
      onChanged: (item) => viewModel.state.menuTypeEnum = item,
    );
  }
}
