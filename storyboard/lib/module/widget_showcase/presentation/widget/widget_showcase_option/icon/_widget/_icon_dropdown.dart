part of '../icon_widget_showcase_option.dart';

/// [MyoroSingularDropdown] that selects the [IconData] in [IconWidgetShowcaseOption].
final class _IconDropdown extends StatelessWidget {
  const _IconDropdown();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final iconOnChanged = configuration.iconOnChanged;
    final iconController = viewModel.iconController;

    return MyoroSingularDropdown(
      controller: iconController,
      configuration: MyoroSingularDropdownConfiguration(
        label: 'Icon',
        allowItemClearing: false,
        selectedItemBuilder: (icon) => icon.name!.capitalized,
        onChanged: iconOnChanged,
        menuConfiguration: MyoroMenuConfiguration(
          request: kMyoroTestIcons.toSet,
          itemBuilder: (icon) {
            return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: icon.name!.capitalized));
          },
        ),
      ),
    );
  }
}
