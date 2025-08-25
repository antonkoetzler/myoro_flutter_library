part of '../myoro_pie_graph_widget_showcase_screen.dart';

/// [MyoroPieGraphConfiguration.typeEnum] option of [MyoroPieGraphWidgetShowcaseScreen].
final class _TypeEnumOption extends StatelessWidget {
  const _TypeEnumOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseScreenViewModel>();

    return MyoroSingularDropdown<MyoroPieGraphEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        selectedItemBuilder: viewModel.typeEnumOptionSelectedItemBuilder,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: MyoroPieGraphEnum.values.toSet,
          itemBuilder: viewModel.typeEnumOptionItemBuilder,
        ),
      ),
    );
  }
}
