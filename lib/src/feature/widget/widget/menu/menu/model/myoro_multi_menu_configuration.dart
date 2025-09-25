import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_multi_menu_configuration.g.dart';

/// Configuration of a [MyoroMultiMenu].
@myoroModel
class MyoroMultiMenuConfiguration<T> extends MyoroMenuConfiguration<T> with _$MyoroMultiMenuConfigurationMixin<T> {
  const MyoroMultiMenuConfiguration({
    required super.request,
    super.onEndReachedRequest,
    super.searchCallback,
    required super.itemBuilder,
    this.selectedItems = const {},
    this.onChanged,
  });

  /// Initially selected items.
  final Set<T> selectedItems;

  /// Callback executed when the selected item is changed.
  final MyoroMultiMenuOnChanged<T>? onChanged;
}
