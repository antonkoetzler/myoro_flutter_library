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
part 'myoro_multi_dropdown.dart';
part 'myoro_singular_dropdown.dart';

/// Alias of the C generic in various classes so typing [Widget]s isn't so annoying.
typedef _C<T> = MyoroDropdownConfiguration<T>;
