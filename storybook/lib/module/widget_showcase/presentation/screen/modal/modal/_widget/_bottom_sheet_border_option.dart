part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalThemeExtension.bottomSheetBorder] option of [MyoroModalWidgetShowcaseScreen].
final class _BottomSheetBorderOption extends StatelessWidget {
  const _BottomSheetBorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return BorderWidgetShowcaseOption(
      label: 'Bottom sheet border',
      selectedBorder: viewModel.state.bottomSheetBorder,
      onChanged: (border) => viewModel.state.bottomSheetBorder = border,
    );
  }
}
