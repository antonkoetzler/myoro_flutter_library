import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('plugins.flutter.io/image_picker');
  final viewModel = MyoroImagePickerViewModel(MyoroImagePickerConfiguration.fake());

  setUpAll(() {
    // Return a fake file path whenever pickImage (or pickMultiImage/pickVideo etc.) is invoked.
    // Adjust the fake path if your code asserts the file exists; for your viewModel it only reads .path.
    Future<dynamic> handler(MethodCall call) async {
      if (call.method == 'pickImage' ||
          call.method == 'pickMultiImage' ||
          call.method == 'pickVideo' ||
          call.method == 'pickImageFromSource') {
        // return a string path (this matches common plugin behavior)
        return '/tmp/fake_image.png';
      }
      return null;
    }

    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, handler);
  });

  tearDownAll(() {
    viewModel.dispose();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  testWidgets('MyoroImagePickerViewModel.onTapSelectionTypeModalButton', (tester) async {
    // final viewModel = MyoroImagePickerViewModel(MyoroImagePickerConfiguration.fake());
    // // call the method that uses ImagePicker; it will get the fake path above.
    // await viewModel.openPickerAndUpdateSelectedImage();
    // expect(viewModel.state.selectedImage, '/tmp/fake_image.png');
    // viewModel.dispose();

    late final BuildContext context;
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    await viewModel.onTapSelectionTypeModalButton(
      context,
      ImageSource.values[faker.randomGenerator.integer(ImageSource.values.length)],
    );
    expect(viewModel.state.selectedImage, '/tmp/fake_image.png');
  });

  test('MyoroImagePickerViewModel.openPickerAndUpdateSelectedImage', () async {
    await viewModel.openPickerAndUpdateSelectedImage();
    expect(viewModel.state.selectedImage, '/tmp/fake_image.png');
  });
}
