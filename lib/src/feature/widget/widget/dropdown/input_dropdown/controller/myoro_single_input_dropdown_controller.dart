import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleInputDropdown].
class MyoroSingleInputDropdownController<T>
    extends MyoroInputDropdownController<T, MyoroSingleInputDropdownViewModel<T>> {
  MyoroSingleInputDropdownController({required MyoroSingleInputDropdownConfiguration<T> configuration})
    : super(MyoroSingleInputDropdownViewModel(configuration));
}
