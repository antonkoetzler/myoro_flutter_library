part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalThemeExtension.border] option of [MyoroModalWidgetShowcaseScreen].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return BorderWidgetShowcaseOption(
      label: 'Border',
      selectedBorder: viewModel.state.border,
      onChanged: (border) => viewModel.state.border = border,
    );
  }
}
