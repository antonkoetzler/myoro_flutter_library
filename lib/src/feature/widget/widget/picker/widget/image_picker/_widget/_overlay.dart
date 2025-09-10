part of '../myoro_image_picker.dart';

/// Tappable overlay on top of the selected image region in [MyoroImagePicker].
final class _Overlay extends StatelessWidget {
  const _Overlay(this._selectedImageIsNotNull);

  final bool _selectedImageIsNotNull;

  @override
  Widget build(context) {
    final imagePickerThemeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final overlayCursor = imagePickerThemeExtension.overlayCursor;
    final overlayUnselectedImageStateIconConfiguration =
        imagePickerThemeExtension.overlayUnselectedImageStateIconConfiguration;
    final overlayIdleBackgroundColor = imagePickerThemeExtension.overlayIdleBackgroundColor;
    final overlayHoverBackgroundColor = imagePickerThemeExtension.overlayHoverBackgroundColor;
    final overlayTapBackgroundColor = imagePickerThemeExtension.overlayTapBackgroundColor;

    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final openPickerAndUpdateSelectedImage = viewModel.openPickerAndUpdateSelectedImage;

    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        cursor: overlayCursor,
        // coverage:ignore-start
        onTapUp: (_) => MyoroPlatformHelper.isMobile
            ? _SelectionTypeModal.show(context, viewModel)
            : openPickerAndUpdateSelectedImage,
        // coverage:ignore-end
      ),
      themeExtension: buttonThemeExtension.copyWith(
        backgroundIdleColor: overlayIdleBackgroundColor,
        backgroundHoverColor: overlayHoverBackgroundColor,
        backgroundTapColor: overlayTapBackgroundColor,
      ),
      builder: (_, _) => _selectedImageIsNotNull
          ? const SizedBox.shrink()
          : Icon(
              overlayUnselectedImageStateIconConfiguration?.icon ?? Icons.upload,
              size: overlayUnselectedImageStateIconConfiguration?.size ?? kMyoroMultiplier * 20,
            ),
    );
  }
}
