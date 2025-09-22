import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroCarouselConfiguration assertion case', () {
    expect(() => MyoroCarouselConfiguration.fake().copyWith(items: const []), throwsAssertionError);
  });

  test('MyoroCarouselConfiguration.copyWith', () {
    final firstConfiguration = MyoroCarouselConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroCarouselConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        direction: secondConfiguration.direction,
        displayTraversalButtons: secondConfiguration.displayTraversalButtons,
        initialItem: secondConfiguration.initialItem,
        autoplay: secondConfiguration.autoplay,
        autoplayIntervalDuration: secondConfiguration.autoplayIntervalDuration,
        items: secondConfiguration.items,
      ),
      secondConfiguration,
    );
  });
}
