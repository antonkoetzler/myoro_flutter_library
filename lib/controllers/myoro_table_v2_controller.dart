import 'package:myoro_flutter_library/blocs/myoro_table_v2_bloc/myoro_table_v2_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a [MyoroTableV2].
final class MyoroTableV2Controller<T> {
  static const fetchAfterwardsDefaultValue = true;

  /// [MyoroTableV2Bloc] that is connected to this [MyoroTableV2Controller].
  late MyoroTableV2Bloc<T> bloc;

  /// Fetches the items of the [MyoroTableV2].
  void fetch() {
    bloc.add(const FetchEvent());
  }

  /// Adds [MyoroFilter]s to [MyoroTableV2].
  void addFilters(
    Set<MyoroFilter> filters, {
    bool fetchAfterwards = fetchAfterwardsDefaultValue,
  }) {
    bloc.add(AddFiltersEvent(filters));
    if (fetchAfterwards) bloc.add(const FetchEvent());
  }

  /// Removes [MyoroFilter]s from [MyoroTableV2].
  void removeFilters(
    Set<MyoroFilter> filters, {
    bool fetchAfterwards = fetchAfterwardsDefaultValue,
  }) {
    bloc.add(RemoveFiltersEvent(filters));
    if (fetchAfterwards) bloc.add(const FetchEvent());
  }

  /// Clears all [MyoroFilter]s from [MyoroTableV2].
  void clearFilters({bool fetchAfterwards = fetchAfterwardsDefaultValue}) {
    bloc.add(const ClearFiltersEvent());
    if (fetchAfterwards) bloc.add(const FetchEvent());
  }
}
