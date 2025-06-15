part of '../padding_widget_showcase_option.dart';

/// Title of [PaddingWidgetShowcaseOption].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    return viewModel.configuration.checkboxOnChanged != null
        ? MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: viewModel.configuration.label,
            onChanged: (enabled) => viewModel.configuration.checkboxOnChanged!(enabled, viewModel.padding),
          ),
        )
        : Text(viewModel.configuration.label, style: checkboxThemeExtension.labelTextStyle);
  }
}
