part of '../myoro_dropdown_widget_showcase.dart';

/// [MyoroDropdownConfiguration.menuTypeEnum] of [MyoroDropdownWidgetShowcase].
final class _MenuTypeEnumOption extends StatelessWidget {
  const _MenuTypeEnumOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDropdownWidgetShowcaseViewModel>();

    return MyoroDropdownMenuTypeEnumWidgetShowcaseOption(
      initiallySelectedItem: viewModel.state.menuTypeEnum,
      onChanged: (item) => viewModel.state.menuTypeEnum = item,
    );
  }
}
