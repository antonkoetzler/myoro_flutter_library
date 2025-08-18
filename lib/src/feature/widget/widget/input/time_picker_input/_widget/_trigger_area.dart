part of '../myoro_time_picker_input.dart';

/// Clickable area to launch the date picker modal.
final class _TriggerArea extends StatelessWidget {
  const _TriggerArea();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTimePickerInputViewModel>();
    final state = viewModel.state;
    final inputSizeController = state.inputSizeController;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapUp: (_) => viewModel.openTimePicker(context, (child) => _TimePicker(child!)),
        child: MyoroLayoutBuilder(
          builder: (_, BoxConstraints constraints) {
            return ValueListenableBuilder(
              valueListenable: inputSizeController,
              builder: (_, inputSize, _) {
                return Container(height: inputSize?.height, width: inputSize?.width, color: MyoroColors.transparent);
              },
            );
          },
        ),
      ),
    );
  }
}
