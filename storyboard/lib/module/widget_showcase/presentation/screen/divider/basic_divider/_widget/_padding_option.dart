part of '../myoro_basic_divider_widget_showcase_screen.dart';

/// [MyoroBasicDividerConfiguration.padding] option of [MyoroBasicDividerWidgetShowcaseScreen].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        checkboxOnChanged: (value, padding) => viewModel.state.padding = value ? padding : null,
        paddingOnChanged: (padding) => viewModel.state.padding = padding,
      ),
    );
  }
}
