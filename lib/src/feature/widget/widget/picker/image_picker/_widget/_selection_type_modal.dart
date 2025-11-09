part of '../widget/myoro_image_picker.dart';

/// Bottom sheet to select if the camera or photo gallery will be used.
final class _SelectionTypeModal extends StatelessWidget {
  static void show(BuildContext context, MyoroImagePickerStyle style, MyoroImagePickerViewModel viewModel) {
    final imagePickerThemeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final selectionTypeModalConstraints = imagePickerThemeExtension.selectionTypeModalConstraints;

    MyoroModal.show(
      context,
      isBottomSheet: true,
      title: context.localization.myoroImagePickerSelectionTypeModalText,
      style: MyoroModalStyle(constraints: selectionTypeModalConstraints),
      child: _SelectionTypeModal(style, viewModel),
    );
  }

  const _SelectionTypeModal(this._style, this._viewModel);

  final MyoroImagePickerStyle _style;
  final MyoroImagePickerViewModel _viewModel;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final selectionTypeModalSpacing = _style.selectionTypeModalSpacing ?? themeExtension.selectionTypeModalSpacing ?? 0;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: Column(
        spacing: selectionTypeModalSpacing,
        mainAxisSize: MainAxisSize.min,
        children: ImageSource.values.map(_SelectionTypeModalButton.new).toList(),
      ),
    );
  }
}
