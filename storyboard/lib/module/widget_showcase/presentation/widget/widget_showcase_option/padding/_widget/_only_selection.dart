part of '../padding_widget_showcase_option.dart';

/// [PaddingWidgetShowcaseOptionEnum.only] selection of [PaddingWidgetShowcaseOption].
final class _OnlySelection extends StatelessWidget {
  const _OnlySelection();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    final state = viewModel.state;
    final padding = state.padding;

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        _SelectionInputPair(
          leftLabel: 'Top',
          leftOnChanged: viewModel.topOnChanged,
          leftValue: padding.top,
          rightLabel: 'Left',
          rightOnChanged: viewModel.leftOnChanged,
          rightValue: padding.left,
        ),
        _SelectionInputPair(
          leftLabel: 'Bottom',
          leftOnChanged: viewModel.bottomOnChanged,
          leftValue: padding.bottom,
          rightLabel: 'Right',
          rightOnChanged: viewModel.rightOnChanged,
          rightValue: padding.right,
        ),
      ],
    );
  }
}
