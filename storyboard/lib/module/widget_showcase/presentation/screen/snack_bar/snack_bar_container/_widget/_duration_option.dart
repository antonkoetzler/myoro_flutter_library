part of '../myoro_snack_bar_container_widget_showcase_screen.dart';

/// [Duration] option of [MyoroSnackBarContainerWidgetShowcaseScreen].
final class _DurationOption extends StatelessWidget {
  const _DurationOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarContainerWidgetShowcaseScreenViewModel>();

    return MyoroInput.number(
      configuration: MyoroInputConfiguration(
        label: 'Duration shown.',
        onChanged: (text) => viewModel.duration = Duration(seconds: int.parse(text)),
      ),
    );
  }
}
