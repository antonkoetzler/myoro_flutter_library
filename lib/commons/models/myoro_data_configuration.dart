/// Request if the [MyoroDataConfiguration.asyncronousItems] is being utilized.
typedef MyoroDataConfigurationRequest<T> = Future<List<T>> Function(Map<String, dynamic> filters);

/// A model to represent the requesting, pagination, & filtering of data.
final class MyoroDataConfiguration<T> {
  /// Static items.
  final List<T>? staticItems;

  /// Request to be made to get the items.
  final MyoroDataConfigurationRequest<T>? asyncronousItems;

  /// Current page.
  int currentPage;

  /// Total # of pages.
  int totalPages;

  /// # of items per page.
  int itemsPerPage;

  /// JSON of filters to be applied.
  final Map<String, dynamic> _filters = {};

  MyoroDataConfiguration({
    this.staticItems,
    this.asyncronousItems,
    this.currentPage = 1,
    this.totalPages = 1,
    this.itemsPerPage = 10,
  }) : assert(
          (staticItems != null) ^ (asyncronousItems != null),
          '[MyoroDataConfiguration]: [staticItems] (x)or [asyncronousItems] needs to be requests.',
        );

  MyoroDataConfiguration<T> copyWith({
    List<T>? staticItems,
    MyoroDataConfigurationRequest<T>? asyncronousItems,
  }) {
    return MyoroDataConfiguration(
      staticItems: staticItems ?? this.staticItems,
      asyncronousItems: asyncronousItems ?? this.asyncronousItems,
    );
  }

  @override
  String toString() => ''
      'MyoroDataConfiguration<$T>(\n'
      '  staticItems: $staticItems,\n'
      '  asyncronousItems: $asyncronousItems,\n'
      '  _filters: $_filters,\n'
      ');';

  /// Adds filters (automatically filtering duplicates).
  void addFilters(Map<String, dynamic> filters) => _filters.addAll(filters);

  /// Removes filters.
  void removeFilters(List<String> keys) {
    for (final String key in keys) {
      _filters.removeWhere((String filterKey, _) {
        return filterKey == key;
      });
    }
  }

  /// Removes all filters.
  void clearFilters() => _filters.clear();

  bool get staticItemsUsed => staticItems != null;
  bool get asynronousItemsUsed => asyncronousItems != null;
  Future<List<T>> get items async => staticItemsUsed ? staticItems! : await asyncronousItems!.call(_filters);
  Map<String, dynamic> get filters => _filters;
}
