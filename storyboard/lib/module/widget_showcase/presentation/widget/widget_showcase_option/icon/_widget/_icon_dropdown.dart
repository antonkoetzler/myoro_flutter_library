part of '../icon_widget_showcase_option.dart';

/// [MyoroSingleSelectionDropdown] that selects the [IconData] in [IconWidgetShowcaseOption].
final class _IconDropdown extends StatelessWidget {
  const _IconDropdown();

  @override
  Widget build(context) {
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    final iconController = viewModel.iconController;
    return MyoroSingleSelectionDropdown(controller: iconController);
  }
}
