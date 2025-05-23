part of '../myoro_dropdown.dart';

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T, C extends MyoroDropdownConfiguration<T>> extends StatefulWidget {
  /// Controller.
  final MyoroDropdownController<T, C> _controller;

  /// If [_controller] was provided or not in [MyoroSingularDropdown] or [MyoroMultiDropdown]'s constructor.
  final bool _controllerProvided;

  const _Dropdown(this._controller, this._controllerProvided);

  @override
  State<_Dropdown<T, C>> createState() => _DropdownState<T, C>();
}

final class _DropdownState<T, C extends MyoroDropdownConfiguration<T>> extends State<_Dropdown<T, C>> {
  MyoroDropdownController<T, C> get _controller => widget._controller;
  MyoroDropdownConfiguration<T> get _configuration => _controller.state.configuration;
  bool get _controllerProvided => widget._controllerProvided;

  @override
  void didUpdateWidget(covariant _Dropdown<T, C> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_controllerProvided) {
      _controller.toggleEnabled(_configuration.enabled);
    }
  }

  @override
  void dispose() {
    if (!_controllerProvided) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return RepaintBoundary(
      child: Row(
        spacing: themeExtension.spacing,
        children: [
          if (_configuration.checkboxOnChangedNotNull) _Checkbox(_controller),
          Expanded(child: _Input(_controller)),
        ],
      ),
    );
  }
}
