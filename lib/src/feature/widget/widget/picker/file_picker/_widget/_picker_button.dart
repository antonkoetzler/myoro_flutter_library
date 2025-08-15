part of '../myoro_file_picker.dart';

/// Button to open the file picker in [MyoroFilePicker].
final class _PickerButton extends StatelessWidget {
  const _PickerButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final textStyle = themeExtension.textStyle;

    final viewModel = context.read<MyoroFilePickerViewModel>();
    final openPicker = viewModel.openPicker;

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          textConfiguration: MyoroTextConfiguration(
            text: context.localization.myoroFilePickerPickerButtonText,
            style: textStyle,
          ),
          borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
          // coverage:ignore-start
          onTapUp: (_) => openPicker(),
          // coverage:ignore-end
        ),
      ),
    );
  }
}
