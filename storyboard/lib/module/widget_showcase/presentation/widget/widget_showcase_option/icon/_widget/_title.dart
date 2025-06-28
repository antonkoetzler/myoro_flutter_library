part of '../icon_widget_showcase_option.dart';

/// Title of [IconWidgetShowcaseOption].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final label = configuration.label;
    final enableOptionCheckboxOnChanged = configuration.enableOptionCheckboxOnChanged;
    final icon = viewModel.icon;
    final iconSize = viewModel.iconSize;

    return enableOptionCheckboxOnChanged != null
        ? MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: label,
            value: viewModel.enabled,
            onChanged: (value) => enableOptionCheckboxOnChanged(value, icon, iconSize),
          ),
        )
        : Text(label, style: checkboxThemeExtension.labelTextStyle);
  }
}
