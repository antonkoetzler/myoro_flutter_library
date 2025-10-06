part of 'bundle/myoro_selection_dropdown_bundle.dart';

/// Multi selection dropdown.
class MyoroMultiSelectionDropdown<T> extends StatefulWidget {
  const MyoroMultiSelectionDropdown({super.key});

  @override
  State<MyoroMultiSelectionDropdown<T>> createState() => _MyoroMultiSelectionDropdownState<T>();
}

final class _MyoroMultiSelectionDropdownState<T> extends State<MyoroMultiSelectionDropdown<T>> {
  late final MyoroMultiSelectionDropdownViewModel<T> _viewModel;

  @override
  Widget build(_) {
    return MyoroMultiInputDropdown(
      controller: ,
    );
  }
}
