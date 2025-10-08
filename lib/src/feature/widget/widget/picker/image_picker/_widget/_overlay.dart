part of '../myoro_image_picker.dart';

/// Tappable overlay on top of the selected image region in [MyoroImagePicker].
final class _Overlay extends StatelessWidget {
  const _Overlay(this._selectedImageIsNotNull);

  final bool _selectedImageIsNotNull;

  @override
  Widget build(context) {
    final imagePickerThemeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final style = context.watch<MyoroImagePickerStyle>();
    final overlayCursor = style.overlayCursor ?? imagePickerThemeExtension.overlayCursor;
    final overlayUnselectedImageStateIconConfiguration =
        style.overlayUnselectedImageStateIconConfiguration ??
        imagePickerThemeExtension.overlayUnselectedImageStateIconConfiguration;
    final overlayIdleBackgroundColor =
        style.overlayIdleBackgroundColor ?? imagePickerThemeExtension.overlayIdleBackgroundColor;
    final overlayHoverBackgroundColor =
        style.overlayHoverBackgroundColor ?? imagePickerThemeExtension.overlayHoverBackgroundColor;
    final overlayTapBackgroundColor =
        style.overlayTapBackgroundColor ?? imagePickerThemeExtension.overlayTapBackgroundColor;

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final openPickerAndUpdateSelectedImage = viewModel.openPickerAndUpdateSelectedImage;

    return MyoroButton(
      configuration: MyoroButtonConfiguration(
        cursor: overlayCursor,
        onTapUp: (_) => MyoroPlatformHelper.isMobile
            ? _SelectionTypeModal.show(context, viewModel)
            : openPickerAndUpdateSelectedImage(),
      ),
      style: const MyoroButtonStyle().copyWith(
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
