part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTagThemeExtension.border] option of [MyoroTagWidgetShowcaseScreen].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();

    return BorderWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionTagBorderLabel,
      selectedBorder: viewModel.state.border,
      onChanged: (border) => viewModel.state.border = border,
    );
  }
}
