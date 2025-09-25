import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_single_menu_configuration.g.dart';

/// Configuration of a [MyoroSingleMenu].
@myoroModel
class MyoroSingleMenuConfiguration<T> extends MyoroMenuConfiguration<T> with _$MyoroSingleMenuConfigurationMixin<T> {
  const MyoroSingleMenuConfiguration({
    required super.request,
    super.onEndReachedRequest,
    super.searchCallback,
    required super.itemBuilder,
    this.selectedItem,
    this.onChanged,
  });

  /// Initially selected item.
  final T? selectedItem;

  /// Callback executed when the selected item is changed.
  final MyoroSingleMenuOnChanged<T>? onChanged;
}
