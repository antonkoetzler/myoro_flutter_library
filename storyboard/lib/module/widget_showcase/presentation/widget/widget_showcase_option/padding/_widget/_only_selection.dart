part of '../padding_widget_showcase_option.dart';

/// [PaddingWidgetShowcaseOptionEnum.only] selection of [PaddingWidgetShowcaseOption].
final class _OnlySelection extends StatelessWidget {
  const _OnlySelection();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        _SelectionInputPair(
          leftLabel: 'Top',
          leftOnChanged: viewModel.topOnChanged,
          rightLabel: 'Left',
          rightOnChanged: viewModel.leftOnChanged,
        ),
        _SelectionInputPair(
          leftLabel: 'Bottom',
          leftOnChanged: viewModel.bottomOnChanged,
          rightLabel: 'Right',
          rightOnChanged: viewModel.rightOnChanged,
        ),
      ],
    );
  }
}
