part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollableStyle.spacing] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _SpacingOption extends StatelessWidget {
  /// Default constructor.
  const _SpacingOption();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionScrollableSpacingLabel,
        enabled: viewModel.state.spacing != null,
        value: viewModel.state.spacing ?? 10.0,
        sliderOnChanged: (value) => viewModel.state.spacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.spacing = enabled ? value : null,
      ),
    );
  }
}
