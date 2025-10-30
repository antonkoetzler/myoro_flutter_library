part of '../widget/myoro_file_picker.dart';

/// [State] of [MyoroFilePicker].
final class _MyoroFilePickerState extends State<MyoroFilePicker> {
  /// View model.
  late final MyoroFilePickerViewModel _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroFilePickerViewModel(widget.title, widget.fileType, widget.allowedExtensions, widget.onChanged);
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilePickerThemeExtension>();
    final spacing = widget.style.spacing ?? themeExtension.spacing ?? 0;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: Row(
        spacing: spacing,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Flexible(child: _SelectedFile()),
          _PickerButton(),
        ],
      ),
    );
  }
}
