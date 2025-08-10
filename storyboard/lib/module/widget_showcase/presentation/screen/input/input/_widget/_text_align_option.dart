part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.textAlign] option of [MyoroInputWidgetShowcaseScreen].
final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return TextAlignWidgetShowcaseOption(
      selectedValue: viewModel.state.textAlign,
      allowItemClearing: false,
      onChanged: (textAlign) => viewModel.state.textAlign = textAlign!,
    );
  }
}
