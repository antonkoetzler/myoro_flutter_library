part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.suffixButtonMargin] option of [MyoroInputWidgetShowcaseScreen].
final class _SuffixButtonMarginOption extends StatelessWidget {
  const _SuffixButtonMarginOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Prefix suffix button margin',
        paddingOnChanged: (padding) => viewModel.state.suffixButtonMargin = padding,
      ),
    );
  }
}
