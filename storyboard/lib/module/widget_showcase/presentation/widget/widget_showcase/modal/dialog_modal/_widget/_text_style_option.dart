part of '../myoro_dialog_modal_widget_showcase.dart';

/// [MyoroDialogModalConfiguration.textStyle] option of [MyoroDialogModalWidgetShowcase].
final class _TextStyleOption extends StatelessWidget {
  const _TextStyleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return TextStyleWidgetShowcaseOption(
      onChanged: (textStyle) => viewModel.state.textStyle = textStyle,
      checkboxOnChanged: (enabled, textStyle) => viewModel.state.textStyle = enabled ? textStyle : null,
    );
  }
}
