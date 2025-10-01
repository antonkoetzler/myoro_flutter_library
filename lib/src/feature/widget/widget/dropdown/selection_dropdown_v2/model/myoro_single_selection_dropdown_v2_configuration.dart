import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_selection_dropdown_v2_configuration.g.dart';

/// Configuration model of [MyoroSingleSelectionDropdownV2].
@myoroModel
class MyoroSingleSelectionDropdownV2Configuration<T>
    extends MyoroSelectionDropdownV2Configuration<T, MyoroSingleMenuConfiguration<T>> {
  const MyoroSingleSelectionDropdownV2Configuration({
    required super.dropdownType,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    this.onChanged,
  });

  /// Function executed when the selected item is changed.
  final MyoroSingleSelectionDropdownV2OnChanged<T>? onChanged;
}
