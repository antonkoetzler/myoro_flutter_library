// Standard dropdown.
//
// Barrel file that holds the implement for both
// [MyoroSingleDropdown] and [MyoroMultiDropdown].

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
part '../myoro_multi_selection_dropdown.dart';
part '../myoro_single_selection_dropdown.dart';

typedef _ViewModelType<T> =
    MyoroSelectionDropdownViewModel<
      T,
      MyoroSelectionDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroMenuConfiguration<T>,
      MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
    >;
