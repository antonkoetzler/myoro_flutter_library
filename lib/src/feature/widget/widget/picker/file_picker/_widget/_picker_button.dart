part of '../myoro_file_picker.dart';

/// Button to open the file picker in [MyoroFilePicker].
final class _PickerButton extends StatelessWidget {
  const _PickerButton();

  @override
  Widget build(context) {
    final filePickerThemeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final textStyle = filePickerThemeExtension.textStyle;

    final buttonSecondaryVariantThemeExtension = MyoroButtonSecondaryVariantThemeExtension.builder(
      context.isDarkMode,
      context.colorScheme,
    );

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
        themeExtension: MyoroIconTextButtonThemeExtension.fromVariant(buttonSecondaryVariantThemeExtension),
      ),
    );
  }
}
