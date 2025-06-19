part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.textConfiguration] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (text) => viewModel.state.text = text,
        maxLinesOnChanged: (maxLines) {
          viewModel.state.maxLines = maxLines ?? MyoroIconTextButtonTextConfiguration.maxLinesDefaultValue;
        },
        overflowOnChanged: (overflow) {
          viewModel.state.overflow = overflow ?? MyoroIconTextButtonTextConfiguration.overflowDefaultValue;
        },
        alignmentOnChanged: (alignment) {
          viewModel.state.alignment = alignment ?? MyoroIconTextButtonTextConfiguration.alignmentDefaultValue;
        },
        styleOnChanged: (style) {
          viewModel.state.style = style;
        },
      ),
    );
  }
}
