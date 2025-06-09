part of '../myoro_basic_divider_widget_showcase.dart';

/// [MyoroBasicDividerConfiguration.padding] option of [MyoroBasicDividerWidgetShowcase].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        checkboxOnChanged: (value, padding) => viewModel.padding = value ? padding : null,
        paddingOnChanged: (padding) => viewModel.padding = padding,
      ),
    );
  }
}
