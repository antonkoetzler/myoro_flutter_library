part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTagThemeExtension.contentPadding] option of [MyoroTagWidgetShowcaseScreen].
final class _ContentPaddingOption extends StatelessWidget {
  const _ContentPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionTagContentPaddingLabel,
        padding: viewModel.state.contentPadding,
        paddingOnChanged: (padding) => viewModel.state.contentPadding = padding,
      ),
    );
  }
}
