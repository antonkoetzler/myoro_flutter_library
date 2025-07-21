part of '../myoro_snack_bar_widget_showcase_screen.dart';

/// [MyoroSnackBarConfiguration.message] of [MyoroSnackBarWidgetShowcaseScreen].
final class _MessageOption extends StatelessWidget {
  const _MessageOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSnackBarWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Simple text message.',
        onChanged: (text) => viewModel.state.message = text,
      ),
    );
  }
}
