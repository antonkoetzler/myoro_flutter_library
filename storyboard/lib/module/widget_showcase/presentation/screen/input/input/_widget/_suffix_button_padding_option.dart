part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.suffixButtonPadding] option of [MyoroInputWidgetShowcaseScreen].
final class _SuffixButtonPaddingOption extends StatelessWidget {
  const _SuffixButtonPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Suffix button padding',
        paddingOnChanged: (padding) => viewModel.state.suffixButtonPadding = padding,
      ),
    );
  }
}
