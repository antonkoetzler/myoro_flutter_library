part of '../text_widget_showcase_option.dart';

/// [Text.data] option of [TextWidgetShowcaseOption].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<TextWidgetShowcaseOptionViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        placeholder: 'Enter text...',
        controller: viewModel.textController,
        onChanged: (text) => viewModel.configuration.textOnChanged(text),
      ),
    );
  }
}
