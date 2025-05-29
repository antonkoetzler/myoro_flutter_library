part of '../myoro_icon_text_button_widget_showcase.dart';

/// [MyoroIconTextButtonConfiguration.textConfiguration] option of [MyoroIconTextButtonWidgetShowcase].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (text) => viewModel.text = text,
        maxLinesOnChanged: (maxLines) {
          viewModel.maxLines = maxLines ?? MyoroIconTextButtonTextConfiguration.maxLinesDefaultValue;
        },
        overflowOnChanged: (overflow) {
          viewModel.overflow = overflow ?? MyoroIconTextButtonTextConfiguration.overflowDefaultValue;
        },
        alignmentOnChanged: (alignment) {
          viewModel.alignment = alignment ?? MyoroIconTextButtonTextConfiguration.alignmentDefaultValue;
        },
        styleOnChanged: (style) {
          viewModel.style = style;
        },
      ),
    );
  }
}
