part of '../myoro_file_picker.dart';

/// Text displaying the selected file.
final class _SelectedFile extends StatelessWidget {
  const _SelectedFile();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final selectedFileTextStyle = themeExtension.selectedFileTextStyle;

    final viewModel = context.read<MyoroFilePickerViewModel>();
    final state = viewModel.state;
    final selectedFileNotifier = state.selectedFileNotifier;

    return ValueListenableBuilder(
      valueListenable: selectedFileNotifier,
      builder: (_, selectedFile, _) => Text(
        // TODO: Localization.
        selectedFile ?? 'No file selected.',
        style: selectedFileTextStyle,
      ),
    );
  }
}
