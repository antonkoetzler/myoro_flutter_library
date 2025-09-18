part of 'bundle/myoro_menu_bundle.dart';

/// Singular selectable menu.
final class MyoroMultiMenu<T> extends StatefulWidget {
  const MyoroMultiMenu({super.key, this.controller, this.configuration, this.themeExtension})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiMenu<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroMultiMenuController<T>? controller;

  /// Configuration.
  final MyoroMultiMenuConfiguration<T>? configuration;

  /// Theme extension.
  final MyoroMenuThemeExtension? themeExtension;

  @override
  State<MyoroMultiMenu<T>> createState() => _MyoroMultiMenuState<T>();
}

final class _MyoroMultiMenuState<T> extends State<MyoroMultiMenu<T>> {
  MyoroMenuThemeExtension? get _themeExtension {
    return widget.themeExtension;
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
  Widget build(_) => _Menu(_viewModel, _themeExtension);
}
