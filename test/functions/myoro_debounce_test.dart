import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Sanity test for [myoroDebounce].
void main() {
  test('myoroDebouce', () {
    bool changedValue = false;
    const duration = Duration(seconds: 2);
    myoroDebounce(
      () => changedValue = true,
      duration,
    ).then((_) => expect(changedValue, isTrue));
    expect(changedValue, isFalse);
  });
}
