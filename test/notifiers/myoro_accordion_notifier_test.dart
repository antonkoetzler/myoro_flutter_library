import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final notifier = MyoroAccordionNotifier();

  tearDownAll(notifier.dispose);

  test('MyoroAccordionNotifier.expandItem', () {
    final item = MyoroAccordionItem.fake();
    notifier.expandItem(item);
    expect(notifier.expandedItem, item);
  });

  test('MyoroAccordionNotifier.reset', () {
    notifier.reset();
    expect(notifier.expandedItem, isNull);
  });
}
