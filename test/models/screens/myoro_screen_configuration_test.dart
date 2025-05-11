import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroScreenConfiguration.fake();

  test('MyoroScreenConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroScreenConfiguration.fake();
    expect(
      model.copyWith(
        drawerController: otherModel.drawerController,
        drawerControllerProvided: otherModel.drawerController != null,
        appBar: otherModel.appBar,
        appBarProvided: otherModel.appBar != null,
        body: otherModel.body,
      ),
      otherModel,
    );
  });

  test('MyoroScreenConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroScreenConfiguration(\n'
      '  drawerController: ${model.drawerController},\n'
      '  appBar: ${model.appBar},\n'
      '  body: ${model.body},\n'
      ');',
    );
  });
}
