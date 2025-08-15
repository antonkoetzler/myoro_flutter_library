// Standard dropdown.
//
// Barrel file that holds the implement for both
// [MyoroSingularDropdown] and [MyoroMultiDropdown].

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_checkbox.dart';
part '../_widget/_dropdown.dart';
part '../_widget/_input.dart';
part '../_widget/_input_trigger_area.dart';
part '../_widget/_input_trigger_area_region.dart';
part '../_widget/_menu.dart';
part '../myoro_multi_dropdown.dart';
part '../myoro_singular_dropdown.dart';

/// Alias of the C generic in various classes so typing [Widget]s isn't so annoying.
typedef _C<T> = MyoroDropdownConfiguration<T>;
