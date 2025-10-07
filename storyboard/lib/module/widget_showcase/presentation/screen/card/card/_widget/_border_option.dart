part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardThemeExtension.border] option of [MyoroCardWidgetShowcaseScreen].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return BorderWidgetShowcaseOption(
      label: 'Border',
      selectedBorder: viewModel.state.border,
      onChanged: (border) => viewModel.state.border = border,
    );
  }
}
