part of '../widget/myoro_image_picker.dart';

/// [State] of [MyoroImagePicker].
final class _MyoroImagePickerState extends State<MyoroImagePicker> {
  /// View model.
  late final MyoroImagePickerViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroImagePickerViewModel(widget.selectedImage, widget.onChanged);
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: const _Content(),
    );
  }
}
