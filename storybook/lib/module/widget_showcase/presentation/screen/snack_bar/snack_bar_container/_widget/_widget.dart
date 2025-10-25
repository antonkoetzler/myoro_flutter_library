part of '../myoro_snack_bar_container_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSnackBarContainerWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSnackBarContainerWidgetShowcaseScreenViewModel>();

    return MyoroIconTextButton(
      onTapUp: (_) => viewModel.showSnackBar(context),
      textConfiguration: const MyoroTextConfiguration(text: 'Tap to show the snack bar!'),
    );
  }
}
