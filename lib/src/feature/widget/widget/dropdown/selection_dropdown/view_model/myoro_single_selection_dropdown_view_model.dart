import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSingleSelectionDropdown].
final class MyoroSingleSelectionDropdownViewModel<T> extends MyoroSelectionDropdownViewModel<T> {
  MyoroSingleSelectionDropdownViewModel()
    : super(
        MyoroSingleInputDropdownController(configuration: MyoroSingleInputDropdownConfiguration()),
      );
}
