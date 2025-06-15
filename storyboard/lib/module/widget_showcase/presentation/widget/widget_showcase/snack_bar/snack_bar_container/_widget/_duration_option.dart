part of '../myoro_snack_bar_container_widget_showcase.dart';

/// [Duration] option of [MyoroSnackBarContainerWidgetShowcase].
final class _DurationOption extends StatelessWidget {
  const _DurationOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSnackBarContainerWidgetShowcaseViewModel>();

    return MyoroInput.number(
      configuration: MyoroInputConfiguration(
        label: 'Duration shown.',
        onChanged: (text) => viewModel.duration = Duration(seconds: int.parse(text)),
      ),
    );
  }
}
