import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTableConfiguration assertion case', () {
    expect(
      () => MyoroTableConfiguration<String>(
        request: () => {faker.lorem.word()},
        columns: const [],
        rowBuilder: (item) => const MyoroTableRow(cells: []),
      ),
      throwsAssertionError,
    );
  });
}
