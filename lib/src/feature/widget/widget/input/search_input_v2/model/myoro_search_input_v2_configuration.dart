import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_v2_configuration.g.dart';

/// Configuration of [MyoroSearchInputV2].
@myoroModel
class MyoroSearchInputV2Configuration<T> with _$MyoroSearchInputV2ConfigurationMixin<T> {
  const MyoroSearchInputV2Configuration({
    this.dropdownType = MyoroDropdownConfiguration.dropdownTypeDefaultValue,
    required this.menuConfiguration,
    required this.selectedItemBuilder,
  });

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Menu configuration.
  final MyoroSearchInputV2MenuConfiguration<T> menuConfiguration;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroInputDropdownSelectedItemBuilder<T> selectedItemBuilder;
}
