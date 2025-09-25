part of '../myoro_file_picker.dart';

/// Button to open the file picker in [MyoroFilePicker].
final class _PickerButton extends StatelessWidget {
  const _PickerButton();

  @override
  Widget build(context) {
    final filePickerThemeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final style = context.read<MyoroFilePickerStyle>();
    final textStyle = style.textStyle ?? filePickerThemeExtension.textStyle;

    final viewModel = context.read<MyoroFilePickerViewModel>();
    final openPicker = viewModel.openPicker;

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          textConfiguration: MyoroTextConfiguration(
            text: context.localization.myoroFilePickerPickerButtonText,
            style: textStyle,
          ),
          // coverage:ignore-start
          onTapUp: (_) => openPicker(),
          // coverage:ignore-end
        ),
        style: const MyoroIconTextButtonStyle().bordered(context),
      ),
    );
  }
}
