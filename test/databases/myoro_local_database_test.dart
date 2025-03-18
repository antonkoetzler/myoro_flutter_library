import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('[MyoroLocalDatabase.instance/initialize]', () {
    test(
      '[MyoroLocalDatabase.instance]: Assertion error case',
      () {
        expect(() => MyoroLocalDatabase.instance, throwsAssertionError);
      },
    );

    test(
      '[MyoroLocalDatabase.instance]: Success case',
      () async {
        await _createDatabase();
        expect(() => MyoroLocalDatabase.instance, returnsNormally);
        _closeDatabase();
      },
    );
  });

  group('[MyoroLocalDatabase.insert/select/get/update/delete]', () {
    // TODO: You are here.
  });
}

Future<void> _createDatabase() async {
  await MyoroLocalDatabase.initialize(
    path: './',
    fileName: 'myoro_local_database_test',
  );
}

void _closeDatabase() {
  MyoroLocalDatabase.instance.close();
}
