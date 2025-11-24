part of '../myoro_text_widget_showcase_screen.dart';

/// [MyoroTextStyle.style] option of [MyoroTextWidgetShowcaseScreen].
final class _TextStyleOption extends StatelessWidget {
  const _TextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTextWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return TextStyleWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionTextStyleLabel,
      selectedItem: state.textStyle,
      onChanged: (textStyle) => state.textStyle = textStyle,
    );
  }
}
