part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.textStyle] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _TextStyleOption extends StatelessWidget {
  const _TextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(onChanged: (textStyle) => viewModel.state.textStyle = textStyle);
  }
}
