import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroCarouselConfiguration.fake();

  test('MyoroCarouselConfiguration assertion case', () {
    expect(() => MyoroCarouselConfiguration(items: const []), throwsAssertionError);
  });

  test('MyoroCarouselConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroCarouselConfiguration.fake();
    expect(
      model.copyWith(
        direction: otherModel.direction,
        displayTraversalButtons: otherModel.displayTraversalButtons,
        initialItem: otherModel.initialItem,
        autoplay: otherModel.autoplay,
        autoplayIntervalDuration: otherModel.autoplayIntervalDuration,
        items: otherModel.items,
      ),
      otherModel,
    );
  });

  test('MyoroCarouselConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroCarouselConfiguration(\n'
      '  direction: ${model.direction},\n'
      '  displayTraversalButtons: ${model.displayTraversalButtons},\n'
      '  initialItem: ${model.initialItem},\n'
      '  autoplay: ${model.autoplay},\n'
      '  autoplayIntervalDuration: ${model.autoplayIntervalDuration},\n'
      '  items: ${model.items},\n'
      ');',
    );
  });
}
