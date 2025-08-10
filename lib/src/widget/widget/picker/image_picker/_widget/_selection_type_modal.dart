part of '../myoro_image_picker.dart';

/// Bottom sheet to select if the camera or photo gallery will be used.
final class _SelectionTypeModal extends StatelessWidget {
  static void show(BuildContext context, MyoroImagePickerViewModel viewModel) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final selectionTypeModalConstraints = themeExtension.selectionTypeModalConstraints;

    final configuration = MyoroModalConfiguration(
      // TODO: Localization.
      title: 'Select image source',
      constraints: selectionTypeModalConstraints,
    );

    if (MyoroPlatformHelper.isMobile) {
      MyoroModal.showBottomSheet(context, configuration: configuration, child: _SelectionTypeModal(viewModel));
    } else {
      MyoroModal.showModal(context, configuration: configuration, child: _SelectionTypeModal(viewModel));
    }
  }

  const _SelectionTypeModal(this._viewModel);

  final MyoroImagePickerViewModel _viewModel;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroImagePickerThemeExtension>();
    final selectionTypeModalSpacing = themeExtension.selectionTypeModalSpacing;

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
