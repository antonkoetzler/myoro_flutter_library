part of '../myoro_pie_graph_widget_showcase.dart';

/// [MyoroPieGraphConfiguration.typeEnum] option of [MyoroPieGraphWidgetShowcase].
final class _TypeEnumOption extends StatelessWidget {
  const _TypeEnumOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroPieGraphWidgetShowcaseViewModel>();

    return MyoroSingularDropdown<MyoroPieGraphEnum>(
      configuration: MyoroSingularDropdownConfiguration(
        selectedItemBuilder: viewModel.typeEnumOptionSelectedItemBuilder,
        menuConfiguration: MyoroMenuConfiguration(
          request: MyoroPieGraphEnum.values.toSet,
          itemBuilder: viewModel.typeEnumOptionItemBuilder,
        ),
      ),
    );
  }
}
