import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_configuration.g.dart';

/// Configuration of [MyoroSearchInput].
@myoroModel
class MyoroSearchInputConfiguration<T> with _$MyoroSearchInputConfigurationMixin<T> {
  const MyoroSearchInputConfiguration({
    this.dropdownType = MyoroDropdownConfiguration.dropdownTypeDefaultValue,
    required this.menuConfiguration,
    required this.selectedItemBuilder,
  });

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Menu configuration.
  final MyoroSearchInputMenuConfiguration<T> menuConfiguration;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroInputDropdownSelectedItemBuilder<T> selectedItemBuilder;
}
