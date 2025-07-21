part of '../padding_widget_showcase_option.dart';

/// [PaddingWidgetShowcaseOptionEnum.all] selection of [PaddingWidgetShowcaseOption].
final class _AllSelection extends StatelessWidget {
  const _AllSelection();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    return _SelectionInput(onChanged: viewModel.allOnChanged);
  }
}
