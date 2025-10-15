part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemContentAnimationCurve] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemContentAnimationCurveOption extends StatelessWidget {
  const _ItemContentAnimationCurveOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return CurveWidgetShowcaseOption(
      label: 'Item content animation curve',
      selectedCurve: viewModel.state.itemContentAnimationCurve,
      onChanged: (curve) => viewModel.state.itemContentAnimationCurve = curve,
    );
  }
}
