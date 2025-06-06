part of '../myoro_card_widget_showcase.dart';

/// [MyoroCardConfiguration.padding] option of [MyoroCardWidgetShowcase].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        paddingOnChanged: (padding) => viewModel.padding = padding,
      ),
    );
  }
}
