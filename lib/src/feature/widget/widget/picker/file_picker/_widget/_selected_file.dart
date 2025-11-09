part of '../widget/myoro_file_picker.dart';

/// Text displaying the selected file in [MyoroFilePicker].
final class _SelectedFile extends StatelessWidget {
  const _SelectedFile();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final style = context.watch<MyoroFilePickerStyle>();
    final textStyle = style.textStyle ?? themeExtension.textStyle;

    final viewModel = context.read<MyoroFilePickerViewModel>();
    final state = viewModel.state;
    final selectedFileNotifier = state.selectedFileNotifier;

    return ValueListenableBuilder(
      valueListenable: selectedFileNotifier,
      builder: (_, selectedFile, _) =>
          Text(selectedFile?.name ?? context.localization.myoroFilePickerSelectedFileUnselectedText, style: textStyle),
    );
  }
}
