part of '../widget/myoro_file_picker.dart';

/// Button to open the file picker in [MyoroFilePicker].
final class _PickerButton extends StatelessWidget {
  const _PickerButton();

  @override
  Widget build(context) {
    final filePickerThemeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final style = context.watch<MyoroFilePickerStyle>();
    final textStyle = style.textStyle ?? filePickerThemeExtension.textStyle;

    final viewModel = context.read<MyoroFilePickerViewModel>();
    final openPicker = viewModel.openPicker;

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        style: const MyoroIconTextButtonStyle().bordered(context),
        textConfiguration: MyoroTextConfiguration(
          text: context.localizations.myoroFilePickerPickerButtonText,
          style: textStyle,
        ),

        onTapUp: (_) => openPicker(),
      ),
    );
  }
}
