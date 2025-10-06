import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_selection_dropdown_configuration.g.dart';

/// Configuration model of [MyoroSingleSelectionDropdown].
@myoroModel
class MyoroSingleSelectionDropdownConfiguration<T>
    extends MyoroSelectionDropdownConfiguration<T, MyoroSingleMenuConfiguration<T>>
    with _$MyoroSingleSelectionDropdownConfigurationMixin {
  const MyoroSingleSelectionDropdownConfiguration({
    super.dropdownType,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    this.onChanged,
  });

  /// Function executed when the selected item is changed.
  final MyoroSingleSelectionDropdownOnChanged<T>? onChanged;
}
