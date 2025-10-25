part of 'bundle/myoro_input_dropdown_bundle.dart';

/// Single item input dropdown.
class MyoroSingleInputDropdown<T> extends StatefulWidget {
  const MyoroSingleInputDropdown({
    super.key,
    this.controller,
    this.inputController,
    this.configuration,
    this.style = const MyoroInputDropdownStyle(),
    this.prefix,
    this.inputSuffix,
  }) : assert(
         controller != null ? configuration == null && inputController == null : configuration != null,
         '[MyoroSingleInputDropdown<$T>]: [controller] (x)or [configuration] and [inputController] must be provided.',
       );

  /// Controller.
  final MyoroSingleInputDropdownController<T>? controller;

  /// Input controller.
  final TextEditingController? inputController;

  /// Configuration.
  final MyoroSingleInputDropdownConfiguration<T>? configuration;

  /// Style.
  final MyoroInputDropdownStyle style;

  /// Prefix [Widget].
  final Widget? prefix;

  /// Suffix [Widget].
  final Widget? inputSuffix;

  @override
  State<MyoroSingleInputDropdown<T>> createState() => _MyoroSingleInputDropdownState<T>();
}

final class _MyoroSingleInputDropdownState<T> extends State<MyoroSingleInputDropdown<T>> {
  MyoroInputDropdownStyle get _style => widget.style;
  Widget? get _prefix => widget.prefix;
  Widget? get _inputSuffix => widget.inputSuffix;

  MyoroSingleInputDropdownViewModel<T>? _localViewModel;
  MyoroSingleInputDropdownViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ??
        (_localViewModel ??= MyoroSingleInputDropdownViewModel(widget.configuration!, widget.inputController));
  }

  @override
  void didUpdateWidget(covariant MyoroSingleInputDropdown<T> oldWidget) {
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
    return _Base(_viewModel, _style, _prefix, _inputSuffix, widget.configuration?.numberInputConfiguration);
  }
}
