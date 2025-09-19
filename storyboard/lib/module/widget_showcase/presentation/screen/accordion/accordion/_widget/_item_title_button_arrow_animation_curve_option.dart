part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonArrowAnimationCurve] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonArrowAnimationCurveOption extends StatelessWidget {
  const _ItemTitleButtonArrowAnimationCurveOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return CurveWidgetShowcaseOption(
      label: 'Arrow animation curve',
      selectedCurve: viewModel.state.itemTitleButtonArrowAnimationCurve,
      onChanged: (curve) => viewModel.state.itemTitleButtonArrowAnimationCurve = curve,
    );
  }
}
