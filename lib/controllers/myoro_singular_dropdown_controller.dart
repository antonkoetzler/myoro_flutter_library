import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSingularDropdown].
class MyoroSingularDropdownController<T> extends MyoroDropdownController<T> {
  @override
  void toggleItem(T item) {
    bloc.add(SetSelectedItemsEvent({item}));
    super.hideMenu();
  }
}
