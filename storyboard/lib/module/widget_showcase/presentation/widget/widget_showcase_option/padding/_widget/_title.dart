part of '../padding_widget_showcase_option.dart';

/// Title of [PaddingWidgetShowcaseOption].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final padding = state.padding;
    final label = configuration.label;
    final enabled = state.enabled;
    final checkboxOnChanged = configuration.checkboxOnChanged;

    final checkboxThemeExtension = MyoroCheckboxThemeExtension.builder(
      context.colorScheme,
      context.textTheme,
    );
    final labelTextStyle = checkboxThemeExtension.labelTextStyle;

    return checkboxOnChanged != null
        ? MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: label,
            value: enabled,
            onChanged: (enabled) {
              checkboxOnChanged(enabled, padding);
              state.enabled = enabled;
            },
          ),
        )
        : Text(label, style: labelTextStyle);
  }
}
