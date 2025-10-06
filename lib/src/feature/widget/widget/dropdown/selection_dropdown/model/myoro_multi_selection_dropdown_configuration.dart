import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_selection_dropdown_configuration.g.dart';

/// Configuration model of [MyoroMultiSelectionDropdown].
@myoroModel
class MyoroMultiSelectionDropdownConfiguration<T>
    extends MyoroSelectionDropdownConfiguration<T, MyoroMultiMenuConfiguration<T>>
    with _$MyoroMultiSelectionDropdownConfigurationMixin<T> {
  const MyoroMultiSelectionDropdownConfiguration({
    required super.dropdownType,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    this.onChanged,
  });

  /// Function executed when the selected items are changed.
  final MyoroMultiSelectionDropdownOnChanged<T>? onChanged;
}
