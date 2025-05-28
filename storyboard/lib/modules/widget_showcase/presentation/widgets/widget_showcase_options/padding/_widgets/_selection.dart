part of '../padding_widget_showcase_option.dart';

/// [Widget] of the selection area of the [PaddingWidgetShowcaseOption].
final class _Selection extends StatelessWidget {
  const _Selection();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    return ValueListenableBuilder(
      valueListenable: viewModel.modeEnumController,
      builder: (_, PaddingWidgetShowcaseOptionEnum modeEnum, __) {
        return switch (modeEnum) {
          PaddingWidgetShowcaseOptionEnum.all => _AllSelection(),
          PaddingWidgetShowcaseOptionEnum.symmetric => _SymmetricSelection(),
          PaddingWidgetShowcaseOptionEnum.only => _OnlySelection(),
        };
      },
    );
  }
}
