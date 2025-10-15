part of '../padding_widget_showcase_option.dart';

/// [PaddingWidgetShowcaseOptionEnum.all] selection of [PaddingWidgetShowcaseOption].
final class _AllSelection extends StatelessWidget {
  const _AllSelection();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    final allOnChanged = viewModel.allOnChanged;
    final state = viewModel.state;
    final padding = state.padding;
    return _SelectionInput(onChanged: allOnChanged, value: padding.top);
  }
}
