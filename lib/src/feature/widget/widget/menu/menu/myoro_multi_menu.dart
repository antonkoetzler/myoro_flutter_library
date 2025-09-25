part of 'bundle/myoro_menu_bundle.dart';

/// Multi selectable menu.
final class MyoroMultiMenu<T> extends StatefulWidget {
  const MyoroMultiMenu({super.key, this.controller, this.configuration, this.style = const MyoroMenuStyle()})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiMenu<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroMultiMenuController<T>? controller;

  /// Configuration.
  final MyoroMultiMenuConfiguration<T>? configuration;

  /// Style.
  final MyoroMenuStyle style;

  @override
  State<MyoroMultiMenu<T>> createState() => _MyoroMultiMenuState<T>();
}

final class _MyoroMultiMenuState<T> extends State<MyoroMultiMenu<T>> {
  MyoroMenuStyle get _style {
    return widget.style;
  }

  MyoroMultiMenuViewModel<T>? _localViewModel;
  MyoroMultiMenuViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ?? (_localViewModel ??= MyoroMultiMenuViewModel(widget.configuration!));
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) => _Menu(_viewModel, _style);
}
