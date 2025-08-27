import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDrawerConfiguration.copyWith', () {
    final firstConfiguration = MyoroDrawerConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroDrawerConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        title: secondConfiguration.title,
        titleTextStyle: secondConfiguration.titleTextStyle,
        titleTextStyleProvided: secondConfiguration.titleTextStyle != null,
        showCloseButton: secondConfiguration.showCloseButton,
        barrierDismissable: secondConfiguration.barrierDismissable,
        child: secondConfiguration.child,
      ),
      secondConfiguration,
    );
  });
}
