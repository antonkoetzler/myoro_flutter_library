import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroMultiDropdown].
class MyoroMultiDropdownController<T>
    extends MyoroDropdownController<T, MyoroMultiDropdownConfiguration<T>, MyoroMultiDropdownViewModel<T>> {
  MyoroMultiDropdownController({required MyoroMultiDropdownConfiguration<T> configuration})
    : super(configuration: configuration, viewModel: MyoroMultiDropdownViewModel(configuration));
}
