// Standard dropdown.
//
// One file that holds the implement for both
// [MyoroSingularDropdown] and [MyoroMultiDropdown].

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_checkbox.dart';
part '_widgets/_dropdown.dart';
part '_widgets/_input.dart';
part '_widgets/_input_trigger_area.dart';
part '_widgets/_input_trigger_area_region.dart';
part '_widgets/_menu.dart';

/// Alias of the C generic in various classes so typing [Widget]s isn't so annoying.
typedef _C<T> = MyoroDropdownConfiguration<T>;

/// Singular item dropdown.
class MyoroSingularDropdown<T> extends StatefulWidget {
  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingularDropdownConfiguration<T> configuration;

  const MyoroSingularDropdown({super.key, this.controller, required this.configuration});

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  MyoroSingularDropdownController<T>? _localController;
  MyoroSingularDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroSingularDropdownController());
  }

  MyoroSingularDropdownConfiguration<T> get _configuration => widget.configuration;

  late final _viewModel = MyoroSingularDropdownViewModel(_configuration, _controller);

  @override
  void dispose() {
    _localController?.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _Dropdown(_viewModel);
}

/// Multi item dropdown.
final class MyoroMultiDropdown<T> extends StatefulWidget {
  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiDropdownConfiguration<T> configuration;

  const MyoroMultiDropdown({super.key, this.controller, required this.configuration});

  @override
  State<MyoroMultiDropdown<T>> createState() => _MyoroMultiDropdownState<T>();
}

final class _MyoroMultiDropdownState<T> extends State<MyoroMultiDropdown<T>> {
  MyoroMultiDropdownController<T>? _localController;
  MyoroMultiDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroMultiDropdownController());
  }

  MyoroMultiDropdownConfiguration<T> get _configuration => widget.configuration;

  late final _viewModel = MyoroMultiDropdownViewModel(_configuration, _controller);

  @override
  void dispose() {
    _localController?.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _Dropdown(_viewModel);
}
