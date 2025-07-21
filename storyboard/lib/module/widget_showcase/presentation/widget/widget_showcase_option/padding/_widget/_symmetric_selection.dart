part of '../padding_widget_showcase_option.dart';

/// [PaddingWidgetShowcaseOptionEnum.symmetric] selection of [PaddingWidgetShowcaseOption].
final class _SymmetricSelection extends StatelessWidget {
  const _SymmetricSelection();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();

    return _SelectionInputPair(
      leftLabel: 'Vertical',
      leftOnChanged: viewModel.verticalOnChanged,
      rightLabel: 'Horizontal',
      rightOnChanged: viewModel.horizontalOnChanged,
    );
  }
}
