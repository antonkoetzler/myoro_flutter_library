part of 'bundle/myoro_menu_bundle.dart';

/// Singular selectable menu.
final class MyoroSingularMenu<T> extends StatefulWidget {
  const MyoroSingularMenu({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingularMenu<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroSingularMenuController<T>? controller;

  /// Configuration.
  final MyoroSingularMenuConfiguration<T>? configuration;

  @override
  State<MyoroSingularMenu<T>> createState() => _MyoroSingularMenuState<T>();
}

final class _MyoroSingularMenuState<T> extends State<MyoroSingularMenu<T>> {
  MyoroSingularMenuViewModel<T>? _localViewModel;
  MyoroSingularMenuViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ?? (_localViewModel ??= MyoroSingularMenuViewModel(widget.configuration!));
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) => _Menu(_viewModel);
}
