part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.textAlign] option of [MyoroInputWidgetShowcase].
final class _TextAlignOption extends StatelessWidget {
  const _TextAlignOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return TextAlignWidgetShowcaseOption(
      initiallySelectedTextAlign: viewModel.state.textAlign,
      allowItemClearing: false,
      onChanged: (textAlign) => viewModel.state.textAlign = textAlign!,
    );
  }
}
