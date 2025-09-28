import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingleDropdown].
class MyoroSingleDropdownController<T>
    extends MyoroDropdownController<T, MyoroSingleDropdownConfiguration<T>, MyoroSingleDropdownViewModel<T>> {
  MyoroSingleDropdownController({required MyoroSingleDropdownConfiguration<T> configuration})
    : super(configuration: configuration, viewModel: MyoroSingleDropdownViewModel(configuration));
}
