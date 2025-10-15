part of '../padding_widget_showcase_option.dart';

/// [PaddingWidgetShowcaseOptionEnum.symmetric] selection of [PaddingWidgetShowcaseOption].
final class _SymmetricSelection extends StatelessWidget {
  const _SymmetricSelection();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    final state = viewModel.state;
    final padding = state.padding;

    return _SelectionInputPair(
      leftLabel: 'Vertical',
      leftOnChanged: viewModel.verticalOnChanged,
      leftValue: padding.vertical / 2,
      rightLabel: 'Horizontal',
      rightOnChanged: viewModel.horizontalOnChanged,
      rightValue: padding.horizontal / 2,
    );
  }
}
