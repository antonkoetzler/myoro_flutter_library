part of '../myoro_snack_bar_container_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSnackBarContainerWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarContainerWidgetShowcaseViewModel>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => viewModel.showSnackBar(context)),
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Tap to show the snack bar!'),
      ),
    );
  }
}
