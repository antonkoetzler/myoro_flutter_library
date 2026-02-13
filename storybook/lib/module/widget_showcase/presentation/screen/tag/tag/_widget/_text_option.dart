part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTag.text] option of [MyoroTagWidgetShowcaseScreen].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionTagTextLabel,
        textInitialValue: state.text,
        textOnChanged: (text) => state.text = text,
        styleInitialValue: state.textStyle?.style,
        styleOnChanged: (textStyle) =>
            state.textStyle = state.textStyle?.copyWith(style: textStyle) ?? MyoroTextStyle(style: textStyle),
      ),
    );
  }
}
