import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTableRow.copyWith', () {
    final firstConfiguration = MyoroTableRow.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroTableRow.fake();
    expect(
      firstConfiguration.copyWith(
        onTapDown: secondConfiguration.onTapDown,
        onTapDownProvided: secondConfiguration.onTapDown != null,
        onTapUp: secondConfiguration.onTapUp,
        onTapUpProvided: secondConfiguration.onTapUp != null,
        cells: secondConfiguration.cells,
      ),
      secondConfiguration,
    );
  });
}
