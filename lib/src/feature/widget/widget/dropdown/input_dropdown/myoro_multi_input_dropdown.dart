part of 'bundle/myoro_input_dropdown_bundle.dart';

/// Multi item input dropdown.
class MyoroMultiInputDropdown<T> extends StatefulWidget {
  const MyoroMultiInputDropdown({
    super.key,
    this.configuration,
    this.inputController,
    this.controller,
    this.style = const MyoroInputDropdownStyle(),
    this.prefix,
    this.inputSuffix,
  }) : assert(
         controller != null ? configuration == null && inputController == null : configuration != null,
         '[MyoroMultiInputDropdown<$T>]: [controller] (x)or [configuration] and [inputController] must be provided.',
       );

  /// Controller.
  final MyoroMultiInputDropdownController<T>? controller;

  /// Input controller.
  final TextEditingController? inputController;

  /// Configuration.
  final MyoroMultiInputDropdownConfiguration<T>? configuration;

  /// Style.
  final MyoroInputDropdownStyle style;

  /// Prefix [Widget].
  final Widget? prefix;

  /// Suffix [Widget].
  final Widget? inputSuffix;

  @override
  State<MyoroMultiInputDropdown<T>> createState() => _MyoroMultiInputDropdownState<T>();
}

final class _MyoroMultiInputDropdownState<T> extends State<MyoroMultiInputDropdown<T>> {
  MyoroInputDropdownStyle get _style => widget.style;
  Widget? get _prefix => widget.prefix;
  Widget? get _inputSuffix => widget.inputSuffix;

  MyoroMultiInputDropdownViewModel<T>? _localViewModel;
  MyoroMultiInputDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ??
        (_localViewModel ??= MyoroMultiInputDropdownViewModel(widget.configuration!, widget.inputController));
  }

  @override
  void didUpdateWidget(covariant MyoroMultiInputDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != null) {
      if (widget.configuration != _viewModel.state.configuration) {
        _viewModel.state.configuration = widget.configuration!;
      }
    }
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return _Base(_viewModel, _style, _prefix, _inputSuffix, null);
  }
}
