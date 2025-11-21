part of '../widget/myoro_image_picker.dart';

/// Selection button of [_SelectionTypeModal] in [MyoroImagePicker].
final class _SelectionTypeModalButton extends StatelessWidget {
  const _SelectionTypeModalButton(this._value);

  final ImageSource _value;

  @override
  Widget build(context) {
    final localization = context.localization;

    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final style = context.watch<MyoroImagePickerStyle>();
    final selectionTypeModalButtonCameraIcon =
        style.selectionTypeModalButtonCameraIcon ?? themeExtension.selectionTypeModalButtonCameraIcon;
    final selectionTypeModalButtonGalleryIcon =
        style.selectionTypeModalButtonGalleryIcon ?? themeExtension.selectionTypeModalButtonGalleryIcon;

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final onTapSelectionTypeModalButton = viewModel.onTapSelectionTypeModalButton;

    return MyoroIconTextButton(
      iconConfiguration: MyoroIconConfiguration(
        icon:
            switch (_value) {
              ImageSource.camera => selectionTypeModalButtonCameraIcon,
              ImageSource.gallery => selectionTypeModalButtonGalleryIcon,
            } ??
            Icons.upload,
      ),
      text: switch (_value) {
        ImageSource.camera => localization.myoroImagePickerSelectionTypeModalButtonCameraText,
        ImageSource.gallery => localization.myoroImagePickerSelectionTypeModalButtonGalleryText,
      },
      onTapUp: (_, _) => onTapSelectionTypeModalButton(context, _value),
    );
  }
}
