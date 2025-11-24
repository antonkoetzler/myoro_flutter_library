part of '../widget/myoro_image_picker.dart';

/// Tappable overlay on top of the selected image region in [MyoroImagePicker].
final class _Overlay extends StatelessWidget {
  const _Overlay();

  @override
  Widget build(context) {
    final imagePickerThemeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final style = context.watch<MyoroImagePickerStyle>();
    final overlayCursor = style.overlayCursor ?? imagePickerThemeExtension.overlayCursor;
    final overlayBackgroundIdleColor =
        style.overlayBackgroundIdleColor ?? imagePickerThemeExtension.overlayBackgroundIdleColor;
    final overlayBackgroundHoverColor =
        style.overlayBackgroundHoverColor ?? imagePickerThemeExtension.overlayBackgroundHoverColor;
    final overlayBackgroundTapColor =
        style.overlayBackgroundTapColor ?? imagePickerThemeExtension.overlayBackgroundTapColor;
    final labelTextStyle = style.labelTextStyle ?? imagePickerThemeExtension.labelTextStyle;
    final overlayUnselectedImageStateIcon =
        style.overlayUnselectedImageStateIcon ??
        imagePickerThemeExtension.overlayUnselectedImageStateIcon ??
        Icons.upload;
    final overlayUnselectedImageStateIconStyle =
        style.overlayUnselectedImageStateIconStyle ?? imagePickerThemeExtension.overlayUnselectedImageStateIconStyle;

    final viewModel = context.read<MyoroImagePickerViewModel>();
    final openPickerAndUpdateSelectedImage = viewModel.openPickerAndUpdateSelectedImage;
    final state = viewModel.state;
    final label = state.label;

    return MyoroButton(
      style: const MyoroButtonStyle().copyWith(
        backgroundIdleColor: overlayBackgroundIdleColor,
        backgroundHoverColor: overlayBackgroundHoverColor,
        backgroundTapColor: overlayBackgroundTapColor,
      ),
      cursor: overlayCursor,
      onTapUp: (_, _) => MyoroPlatformHelper.isMobile
          ? _SelectionTypeModal.show(context, style, viewModel)
          : openPickerAndUpdateSelectedImage(),
      builder: (_, _) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyoroIcon(overlayUnselectedImageStateIcon, style: overlayUnselectedImageStateIconStyle),
          if (label.isNotEmpty) Text(label, style: labelTextStyle),
        ],
      ),
    );
  }
}
