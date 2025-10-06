import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_state.dart';

/// View model of [MyoroSelectionDropdown].
abstract class MyoroSelectionDropdownViewModel<
  T,
  INPUT_DROPDOWN_CONTROLLER extends MyoroInputDropdownController<
    T,
    MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
    MyoroInputDropdownViewModel<
      T,
      MyoroInputDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
      MyoroDropdownController<
        T,
        MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
        MyoroDropdownViewModel<
          T,
          MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
          MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
        >
      >
    >
  >
> {
  /// Default constructor.
  MyoroSelectionDropdownViewModel(INPUT_DROPDOWN_CONTROLLER inputDropdownController)
    : _state = MyoroSelectionDropdownState(inputDropdownController);

  /// State.
  final MyoroSelectionDropdownState _state;

  /// [_state] getter.
  MyoroSelectionDropdownState get state {
    return _state;
  }
}
