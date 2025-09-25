part of 'bundle/myoro_menu_bundle.dart';

/// Single selectable menu.
final class MyoroSingleMenu<T> extends StatefulWidget {
  const MyoroSingleMenu({super.key, this.controller, this.configuration, this.style = const MyoroMenuStyle()})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingleMenu<$T>]: [controller] (x)or [configuration] must be provided.',
      );

  /// Controller.
  final MyoroSingleMenuController<T>? controller;

  /// Configuration.
  final MyoroSingleMenuConfiguration<T>? configuration;

  /// Style.
  final MyoroMenuStyle style;

  @override
  State<MyoroSingleMenu<T>> createState() => _MyoroSingleMenuState<T>();
}

final class _MyoroSingleMenuState<T> extends State<MyoroSingleMenu<T>> {
  MyoroMenuStyle get _style {
    return widget.style;
  }

  MyoroSingleMenuViewModel<T>? _localViewModel;
  MyoroSingleMenuViewModel<T> get _viewModel {
    // ignore: invalid_use_of_protected_member
    return widget.controller?.viewModel ?? (_localViewModel ??= MyoroSingleMenuViewModel(widget.configuration!));
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(_) => _Menu(_viewModel, _style);
}
