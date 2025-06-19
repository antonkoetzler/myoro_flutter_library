part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardConfiguration.padding] option of [MyoroCardWidgetShowcaseScreen].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        paddingOnChanged: (padding) => viewModel.state.padding = padding,
      ),
    );
  }
}
