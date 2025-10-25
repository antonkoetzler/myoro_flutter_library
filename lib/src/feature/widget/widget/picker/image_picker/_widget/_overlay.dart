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
    final overlayBackgroundIdleColor =
        style.overlayBackgroundIdleColor ?? imagePickerThemeExtension.overlayBackgroundIdleColor;
    final overlayBackgroundHoverColor =
        style.overlayBackgroundHoverColor ?? imagePickerThemeExtension.overlayBackgroundHoverColor;
    final overlayBackgroundTapColor =
        style.overlayBackgroundTapColor ?? imagePickerThemeExtension.overlayBackgroundTapColor;

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final openPickerAndUpdateSelectedImage = viewModel.openPickerAndUpdateSelectedImage;

    return MyoroButton(
      style: const MyoroButtonStyle().copyWith(
        backgroundIdleColor: overlayBackgroundIdleColor,
        backgroundHoverColor: overlayBackgroundHoverColor,
        backgroundTapColor: overlayBackgroundTapColor,
      ),
      cursor: overlayCursor,
      onTapUp: (_) => MyoroPlatformHelper.isMobile
          ? _SelectionTypeModal.show(context, style, viewModel)
          : openPickerAndUpdateSelectedImage(),
      builder: (_, _) => _selectedImageIsNotNull
          ? const SizedBox.shrink()
          : Icon(
              overlayUnselectedImageStateIconConfiguration?.icon ?? Icons.upload,
              size: overlayUnselectedImageStateIconConfiguration?.size ?? kMyoroMultiplier * 20,
            ),
    );
  }
}
