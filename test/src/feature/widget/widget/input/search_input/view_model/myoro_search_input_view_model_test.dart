import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSearchInputViewModel constructor', () {
    final configuration = MyoroSearchInputConfiguration<String>(
      request: (_) async => {},
      itemBuilder: (item) => MyoroMenuItem.fake(),
    );
    final viewModel = MyoroSearchInputViewModel(configuration);

    expect(() => viewModel.state.configuration, returnsNormally);
    viewModel.dispose();
  });
}
