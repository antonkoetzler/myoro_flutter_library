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
        showCloseButton: secondConfiguration.showCloseButton,
        barrierDismissable: secondConfiguration.barrierDismissable,
        closeButtonIcon: secondConfiguration.closeButtonIcon,
        closeButtonIconProvided: secondConfiguration.closeButtonIcon != null,
        child: secondConfiguration.child,
      ),
      secondConfiguration,
    );
  });
}
