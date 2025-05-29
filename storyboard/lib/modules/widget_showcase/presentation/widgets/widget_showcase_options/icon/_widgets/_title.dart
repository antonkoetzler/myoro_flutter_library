part of '../icon_widget_showcase_option.dart';

/// Title of [IconWidgetShowcaseOption].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    return viewModel.configuration.checkboxOnChanged != null
        ? MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: viewModel.configuration.label,
            onChanged: (value) => viewModel.configuration.checkboxOnChanged!(value, viewModel.icon, viewModel.iconSize),
          ),
        )
        : Text(viewModel.configuration.label, style: checkboxThemeExtension.labelTextStyle);
  }
}
