part of '../icon_widget_showcase_option.dart';

/// Title of [IconWidgetShowcaseOption].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final label = configuration.label;
    final enableOptionCheckboxOnChanged = configuration.enableOptionCheckboxOnChanged;
    final enabledController = viewModel.enabledController;

    return enableOptionCheckboxOnChanged != null
        ? MyoroCheckbox(
            label: label,
            value: enabledController.value,
            onChanged: (value) => enabledController.value = value,
          )
        : Text(label, style: checkboxThemeExtension.labelTextStyle);
  }
}
