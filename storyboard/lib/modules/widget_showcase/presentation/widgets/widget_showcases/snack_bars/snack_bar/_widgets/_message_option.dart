part of '../myoro_snack_bar_widget_showcase.dart';

/// [MyoroSnackBarConfiguration.message] of [MyoroSnackBarWidgetShowcase].
final class _MessageOption extends StatelessWidget {
  const _MessageOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Simple text message.',
        onChanged: (text) => viewModel.state.message = text,
      ),
    );
  }
}
