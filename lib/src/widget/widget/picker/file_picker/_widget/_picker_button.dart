part of '../myoro_file_picker.dart';

/// Button to open the file picker.
final class _PickerButton extends StatelessWidget {
  const _PickerButton();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFilePickerViewModel>();
    final openPicker = viewModel.openPicker;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        textConfiguration: const MyoroTextConfiguration(
          // TODO: Localization.
          text: 'Select...',
        ),
        onTapUp: (_) => openPicker(),
      ),
    );
  }
}
