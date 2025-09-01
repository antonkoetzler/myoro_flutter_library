import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final viewModel = MyoroSearchInputViewModel();

  tearDown(viewModel.dispose);

  test('MyoroSearchInputViewModel.configuration assertion case', () {
    expect(() => viewModel.configuration, throwsAssertionError);
  });
}
