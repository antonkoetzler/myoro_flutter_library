part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.textAlign] option of [MyoroInputWidgetShowcaseScreen].
final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return TextAlignWidgetShowcaseOption(
      initiallySelectedTextAlign: viewModel.state.textAlign,
      allowItemClearing: false,
      onChanged: (textAlign) => viewModel.state.textAlign = textAlign!,
    );
  }
}
