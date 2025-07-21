import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSnackBarConfiguration.fake', () {
    MyoroSnackBarConfiguration.fake(messageProvided: true);
    MyoroSnackBarConfiguration.fake(messageProvided: false);
  });
}
