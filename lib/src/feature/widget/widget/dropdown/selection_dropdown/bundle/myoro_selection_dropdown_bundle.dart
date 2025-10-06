import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../myoro_multi_selection_dropdown.dart';
part '../myoro_single_selection_dropdown.dart';

part '../_widget/_base.dart';
part '../_widget/_input.dart';

typedef _ViewModelType<T> =
    MyoroSelectionDropdownViewModel<
      T,
      MyoroSelectionDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroDropdownController<
        T,
        MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
        MyoroDropdownViewModel<
          T,
          MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
          MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
        >
      >
    >;
