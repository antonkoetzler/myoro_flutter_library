// coverage:ignore-file

part of '../myoro_image_picker.dart';

/// Bottom sheet to select if the camera or photo gallery will be used.
final class _SelectionTypeModal extends StatelessWidget {
  static void show(BuildContext context, MyoroImagePickerViewModel viewModel) {
    final imagePickerThemeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final selectionTypeModalConstraints = imagePickerThemeExtension.selectionTypeModalConstraints;

    MyoroModal.showBottomSheet(
      context,
      configuration: MyoroModalConfiguration(title: context.localization.myoroImagePickerSelectionTypeModalText),
      style: MyoroModalStyle(constraints: selectionTypeModalConstraints),
      child: _SelectionTypeModal(viewModel),
    );
  }

  const _SelectionTypeModal(this._viewModel);

  final MyoroImagePickerViewModel _viewModel;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final style = context.read<MyoroImagePickerStyle>();
    final selectionTypeModalSpacing = style.selectionTypeModalSpacing ?? themeExtension.selectionTypeModalSpacing ?? 0;

    return InheritedProvider.value(
      value: _viewModel,
      child: Column(
        spacing: selectionTypeModalSpacing,
        mainAxisSize: MainAxisSize.min,
        children: ImageSource.values.map(_SelectionTypeModalButton.new).toList(),
      ),
    );
  }
}
