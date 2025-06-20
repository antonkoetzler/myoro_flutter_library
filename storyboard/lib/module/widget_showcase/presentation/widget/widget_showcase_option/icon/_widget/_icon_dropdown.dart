part of '../icon_widget_showcase_option.dart';

/// [MyoroSingularDropdown] that selects the [IconData].
final class _IconDropdown extends StatelessWidget {
  const _IconDropdown();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();

    return MyoroSingularDropdown(
      controller: MyoroSingularDropdownController(initiallySelectedItem: viewModel.icon),
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Icon',
        allowItemClearing: false,
        selectedItemBuilder: (icon) => icon.toString(),
        onChanged: (icon) => viewModel.iconController.value = icon!,
        menuConfiguration: MyoroMenuConfiguration(
          request: kMyoroTestIcons.toSet,
          itemBuilder: (icon) {
            return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: icon.toString()));
          },
        ),
      ),
    );
  }
}
