part of 'myoro_bar_graph_widget_showcase_view_model.dart';

/// State of [MyoroBarGraphWidgetShowcaseViewModel].
final class MyoroBarGraphWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroBarGraphConfiguration.sorted]
  bool _sorted = MyoroBarGraphConfiguration.sortedDefaultValue;
  bool get sorted => _sorted;
  set sorted(bool sorted) {
    _sorted = sorted;
    notifyListeners();
  }

  /// [MyoroBarGraphConfiguration.items]
  final _items = List.generate(faker.randomGenerator.integer(50), (_) => MyoroBarGraphGroup.fake());
  List<MyoroBarGraphGroup> get items => _items;
}
