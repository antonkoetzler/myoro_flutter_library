import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroScrollableEnum].
void main() {
  test('MyoroScrollableEnum getters', () {
    expect(
      MyoroScrollableEnum.singleChildScrollView.isSingleChildScrollView,
      isTrue,
    );
    expect(
      MyoroScrollableEnum.customScrollView.isCustomScrollView,
      isTrue,
    );
  });

  test('MyoroScrollableEnum.fake', () {
    expect(
      MyoroScrollableEnum.values.contains(
        MyoroScrollableEnum.fake(),
      ),
      isTrue,
    );
  });
}
