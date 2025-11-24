part of '../bundle/myoro_field_button_bundle.dart';

/// [State] of [_Base].
final class _BaseState<T> extends State<_Base<T>> {
  /// View model.
  late final MyoroFilterButtonViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroFilterButtonViewModel<T>(widget._state);
  }

  /// Did update function.
  @override
  void didUpdateWidget(_Base<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state = widget._state;
  }

  /// Build function.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: widget.style),
        Provider(create: (_) => MyoroFilterButtonViewModel(widget._state)),
      ],
      child: _Dropdown<T>(),
    );
  }
}
