import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_selection_dropdown_v2_configuration.g.dart';

/// Configuration model of [MyoroMultiSelectionDropdownV2].
@myoroModel
class MyoroMultiSelectionDropdownV2Configuration<T>
    extends MyoroSelectionDropdownV2Configuration<T, MyoroMultiMenuConfiguration<T>>
    with _$MyoroMultiSelectionDropdownV2ConfigurationMixin<T> {
  const MyoroMultiSelectionDropdownV2Configuration({
    required super.dropdownType,
    required super.menuConfiguration,
    required super.selectedItemBuilder,
    this.onChanged,
  });

  /// Function executed when the selected items are changed.
  final MyoroMultiSelectionDropdownV2OnChanged<T>? onChanged;
}
