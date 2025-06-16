import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
