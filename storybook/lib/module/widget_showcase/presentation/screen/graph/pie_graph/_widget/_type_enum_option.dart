part of '../myoro_pie_graph_widget_showcase_screen.dart';

/// [MyoroPieGraphConfiguration.typeEnum] option of [MyoroPieGraphWidgetShowcaseScreen].
final class _TypeEnumOption extends StatelessWidget {
  const _TypeEnumOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseScreenViewModel>();

    return MyoroSingleSelectionDropdown<MyoroPieGraphEnum>(
      selectedItemBuilder: viewModel.typeEnumOptionSelectedItemBuilder,
      items: MyoroPieGraphEnum.values.toSet(),
      itemBuilder: viewModel.typeEnumOptionItemBuilder,
    );
  }
}
