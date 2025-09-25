part of '../myoro_file_picker.dart';

/// Text displaying the selected file in [MyoroFilePicker].
final class _SelectedFile extends StatelessWidget {
  const _SelectedFile();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final style = context.read<MyoroFilePickerStyle>();
    final textStyle = style.textStyle ?? themeExtension.textStyle;

    final viewModel = context.read<MyoroFilePickerViewModel>();
    final state = viewModel.state;
    final selectedFileNotifier = state.selectedFileNotifier;

    return ValueListenableBuilder(
      valueListenable: selectedFileNotifier,
      builder: (_, selectedFile, _) => Text(
        // coverage:ignore-start
        selectedFile?.name ?? context.localization.myoroFilePickerSelectedFileUnselectedText,
        // coverage:ignore-end
        style: textStyle,
      ),
    );
  }
}
