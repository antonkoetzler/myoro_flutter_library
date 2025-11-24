part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [MyoroIconTextButtonConfiguration.textConfiguration] option of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final maxLines = state.maxLines;
    final overflow = state.overflow;
    final alignment = state.alignment;
    final style = state.style;
    final text = state.text;

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textInitialValue: text,
        textOnChanged: (text) => state.text = text,
        maxLinesInitialValue: maxLines,
        maxLinesOnChanged: (maxLines) => state.maxLines = maxLines ?? MyoroTextStyle.maxLinesDefaultValue,
        overflowInitialValue: overflow,
        overflowOnChanged: (overflow) => state.overflow = overflow ?? MyoroTextStyle.overflowDefaultValue,
        alignmentInitialValue: alignment,
        alignmentOnChanged: (alignment) => state.alignment = alignment ?? MyoroTextStyle.alignmentDefaultValue,
        styleInitialValue: style,
        styleOnChanged: (style) => state.style = style,
      ),
    );
  }
}
