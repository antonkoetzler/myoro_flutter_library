part of 'myoro_selection_dropdown_view_model.dart';

/// State of [MyoroSelectionDropdownViewModel].
final class MyoroSelectionDropdownState<
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
  const MyoroSelectionDropdownState(this.inputDropdownController);

  /// Input dropdown controller.
  final INPUT_DROPDOWN_CONTROLLER inputDropdownController;

  /// Dispose function.
  void dispose() {
    inputDropdownController.dispose();
  }
}
