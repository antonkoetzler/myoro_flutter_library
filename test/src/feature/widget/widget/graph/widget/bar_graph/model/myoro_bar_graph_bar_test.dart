import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroBarGraphBar.copyWith', () {
    final firstConfiguration = MyoroBarGraphBar.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroBarGraphBar.fake();
    expect(
      firstConfiguration.copyWith(
        y: secondConfiguration.y,
        color: secondConfiguration.color,
        colorProvided: secondConfiguration.color != null,
        barSections: secondConfiguration.barSections,
      ),
      secondConfiguration,
    );
  });
}
