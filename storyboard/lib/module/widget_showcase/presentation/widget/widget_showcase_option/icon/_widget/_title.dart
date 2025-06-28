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

    return enableOptionCheckboxOnChanged != null
        ? MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: label,
            value: viewModel.enabled,
            onChanged: (value) => viewModel.enabledController.value = value,
          ),
        )
        : Text(label, style: checkboxThemeExtension.labelTextStyle);
  }
}
