part of '../myoro_drawer_widget_showcase_screen.dart';

/// [MyoroDrawerThemeExtension.closeButtonContentPadding] option of [MyoroDrawerWidgetShowcaseScreen].
final class _CloseButtonContentPaddingOption extends StatelessWidget {
  const _CloseButtonContentPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Close button content padding',
        paddingOnChanged: (padding) => viewModel.closeButtonContentPadding = padding,
      ),
    );
  }
}
