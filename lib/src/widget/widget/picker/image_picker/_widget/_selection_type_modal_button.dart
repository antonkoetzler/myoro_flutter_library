part of '../myoro_image_picker.dart';

/// Selection button of [_SelectionTypeModal] in [MyoroImagePicker].
final class _SelectionTypeModalButton extends StatelessWidget {
  const _SelectionTypeModalButton(this._value);

  final ImageSource _value;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final selectionTypeModalButtonCameraIcon = themeExtension.selectionTypeModalButtonCameraIcon;
    final selectionTypeModalButtonGalleryIcon = themeExtension.selectionTypeModalButtonGalleryIcon;

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final onTapSelectionTypeModalButton = viewModel.onTapSelectionTypeModalButton;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        iconConfiguration: MyoroIconConfiguration(
          icon: switch (_value) {
            ImageSource.camera => selectionTypeModalButtonCameraIcon,
            ImageSource.gallery => selectionTypeModalButtonGalleryIcon,
          },
        ),
        textConfiguration: MyoroTextConfiguration(
          // TODO: Localization.
          text: switch (_value) {
            ImageSource.camera => 'Open camera',
            ImageSource.gallery => 'Browse gallery',
          },
        ),
        onTapUp: (_) => onTapSelectionTypeModalButton(context, _value),
      ),
    );
  }
}
