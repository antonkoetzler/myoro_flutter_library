part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroDialogModalWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();

    return MyoroIconTextButton(onTapUp: (_, _) => viewModel.showModal(context), text: 'Click to display the modal!');
  }
}
