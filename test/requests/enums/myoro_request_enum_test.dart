import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroRequestEnum].
void main() {
  test('MyoroRequestEnum getters', () {
    expect(MyoroRequestEnum.idle.isIdle, isTrue);
    expect(MyoroRequestEnum.loading.isLoading, isTrue);
    expect(MyoroRequestEnum.success.isSuccess, isTrue);
    expect(MyoroRequestEnum.error.isError, isTrue);
  });

  test('MyoroRequestEnum.fake()', () {
    expect(MyoroRequestEnum.values.contains(MyoroRequestEnum.fake()), isTrue);
  });
}
