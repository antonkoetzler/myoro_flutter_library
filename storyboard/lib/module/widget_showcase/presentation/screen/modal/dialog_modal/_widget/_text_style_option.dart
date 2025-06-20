part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.textStyle] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _TextStyleOption extends StatelessWidget {
  const _TextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      onChanged: (textStyle) => viewModel.state.textStyle = textStyle,
      checkboxOnChanged: (enabled, textStyle) => viewModel.state.textStyle = enabled ? textStyle : null,
    );
  }
}
