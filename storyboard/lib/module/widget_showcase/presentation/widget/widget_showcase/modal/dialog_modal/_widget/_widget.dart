part of '../myoro_dialog_modal_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDialogModalWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => viewModel.showModal(context)),
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Click to display the modal!'),
      ),
    );
  }
}
