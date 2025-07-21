part of '../padding_widget_showcase_option.dart';

/// [Widget] of the selection area of the [PaddingWidgetShowcaseOption].
final class _Selection extends StatelessWidget {
  const _Selection();

  @override
  Widget build(context) {
    final viewModel = context.read<PaddingWidgetShowcaseOptionViewModel>();
    return ValueListenableBuilder(
      valueListenable: viewModel.modeEnumController,
      builder: (_, PaddingWidgetShowcaseOptionEnum modeEnum, __) {
        return switch (modeEnum) {
          PaddingWidgetShowcaseOptionEnum.all => const _AllSelection(),
          PaddingWidgetShowcaseOptionEnum.symmetric => const _SymmetricSelection(),
          PaddingWidgetShowcaseOptionEnum.only => const _OnlySelection(),
        };
      },
    );
  }
}
