import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroCardConfiguration.copyWith', () {
    final firstConfiguration = MyoroCardConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroCardConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        title: secondConfiguration.title,
        titleTextStyle: secondConfiguration.titleTextStyle,
        titleTextStyleProvided: secondConfiguration.titleTextStyle != null,
        padding: secondConfiguration.padding,
        paddingProvided: secondConfiguration.padding != null,
        constraints: secondConfiguration.constraints,
        child: secondConfiguration.child,
      ),
      secondConfiguration,
    );
  });
}
