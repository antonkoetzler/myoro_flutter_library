part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardThemeExtension.titleCardSpacing] option of [MyoroCardWidgetShowcaseScreen].
final class _TitleCardSpacingOption extends StatelessWidget {
  const _TitleCardSpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Title card spacing',
        initiallyEnabled: viewModel.state.titleCardSpacing != null,
        initialValue: viewModel.state.titleCardSpacing ?? 10.0,
        sliderOnChanged: (value) => viewModel.state.titleCardSpacing = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.titleCardSpacing = enabled ? value : null,
      ),
    );
  }
}
