import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroBarGraphWidgetShowcaseScreenViewModel].
final class MyoroBarGraphWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroBarGraph.sorted]
  bool _sorted = MyoroBarGraph.sortedDefaultValue;

  /// [MyoroBarGraph.items]
  final _items = List.generate(faker.randomGenerator.integer(50), (_) => MyoroBarGraphGroup.fake());

  /// [_sorted] getter.
  bool get sorted {
    return _sorted;
  }

  /// [_items] getter.
  List<MyoroBarGraphGroup> get items {
    return _items;
  }

  /// [_sorted] setter.
  set sorted(bool sorted) {
    _sorted = sorted;
    notifyListeners();
  }
}
