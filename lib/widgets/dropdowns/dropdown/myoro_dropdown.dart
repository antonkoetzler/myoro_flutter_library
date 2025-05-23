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

/// Singular item dropdown.
class MyoroSingularDropdown<T> extends StatelessWidget {
  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  /// Configuration.
  final MyoroSingularDropdownConfiguration<T>? configuration;

  const MyoroSingularDropdown({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSingularDropdown<$T>]: [controller] (x)or [configuration] must not be null.',
      );

  @override
  Widget build(BuildContext context) {
    return _Dropdown(
      controller ?? MyoroSingularDropdownController<T>(configuration: configuration!),
      controller != null,
    );
  }
}

/// Multi item dropdown.
final class MyoroMultiDropdown<T> extends StatelessWidget {
  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  /// Configuration.
  final MyoroMultiDropdownConfiguration<T>? configuration;

  const MyoroMultiDropdown({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroMultiDropdown<$T>]: [controller] (x)or [configuration] must not be null.',
      );

  @override
  Widget build(BuildContext context) {
    return _Dropdown(controller ?? MyoroMultiDropdownController<T>(configuration: configuration!), controller != null);
  }
}
