import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

void main() {
  group('MyoroMenuViewModel.state assertion case', () {
    final viewModel = MyoroMenuViewModel();

    test('MyoroMenuViewModel.state assertion case', () {
      expect(() => viewModel.state, throwsAssertionError);
    });
  });

  group('MyoroMenuViewModel.initialize', () {
    final viewModel = MyoroMenuViewModel<String>();

    tearDown(viewModel.dispose);

    test('MyoroMenuViewModel.initialize', () {
      viewModel.initialize(
        MyoroMenuConfiguration(
          request: () => {},
          itemBuilder: (item) => MyoroMenuItem.fake(),
          onEndReachedRequest: (_) => {},
        ),
      );
      expect(() => viewModel.state, returnsNormally);
    });
  });

  group('MyoroMenuViewModel.fetch', () {
    var requestExecuted = false;

    final viewModel =
        MyoroMenuViewModel<String>()..initialize(
          MyoroMenuConfiguration(
            request: () {
              requestExecuted = true;
              return {};
            },
            itemBuilder: (item) => MyoroMenuItem.fake(),
          ),
        );

    tearDown(viewModel.dispose);

    test('MyoroMenuViewModel.fetch', () async {
      viewModel.fetch();
      await Future.delayed(const Duration(milliseconds: 100));
      expect(requestExecuted, isTrue);
      expect(viewModel.state.itemsRequestController.status.isSuccess, isTrue);
    });
  });

  group('MyoroMenuViewModel.fetchExtra', () {
    final viewModel =
        MyoroMenuViewModel<String>()
          ..initialize(MyoroMenuConfiguration(request: () => {}, itemBuilder: (item) => MyoroMenuItem.fake()));

    tearDownAll(viewModel.dispose);

    test('MyoroMenuViewModel.fetchExtra assertion case', () {
      // ignore: invalid_use_of_protected_member
      expect(viewModel.fetchExtra, throwsAssertionError);
    });

    test('MyoroMenuViewModel.fetchExtra success case', () async {
      var onEndReachedRequestExecuted = false;

      viewModel.state.configuration = viewModel.state.configuration.copyWith(
        onEndReachedRequest: (_) {
          onEndReachedRequestExecuted = true;
          return {};
        },
      );

      // ignore: invalid_use_of_protected_member
      viewModel.fetchExtra();
      await Future.delayed(const Duration(milliseconds: 100));
      expect(onEndReachedRequestExecuted, isTrue);
      expect(viewModel.state.itemsRequestController.status.isSuccess, isTrue);
    });
  });

  group('MyoroMenuViewModel.search', () {
    final viewModel =
        MyoroMenuViewModel<String>()
          ..initialize(MyoroMenuConfiguration(request: () => {}, itemBuilder: (item) => MyoroMenuItem.fake()));

    tearDownAll(viewModel.dispose);

    test('MyoroMenuViewModel.search assertion case', () {
      expect(() => viewModel.search(faker.lorem.word()), throwsAssertionError);
    });

    test('MyoroMenuViewModel.search success case', () {
      var searchCallbackExecuted = false;

      viewModel.state.configuration = viewModel.state.configuration.copyWith(
        searchCallback: (_, _) {
          searchCallbackExecuted = true;
          return {};
        },
      );

      viewModel.search('');
      expect(searchCallbackExecuted, isFalse);
      viewModel.search(faker.lorem.word());
      expect(searchCallbackExecuted, isTrue);
    });
  });

  group('MyoroMenuViewModel.scrollControllerListener', () {
    final viewModel =
        MyoroMenuViewModel<String>()..initialize(
          MyoroMenuConfiguration(
            request: () => {faker.lorem.word()},
            itemBuilder: (item) => MyoroMenuItem.fake(),
            onEndReachedRequest: (_) => {},
          ),
        );

    tearDown(viewModel.dispose);

    testWidgets('MyoroMenuViewModel.scrollControllerListener', (tester) async {
      await tester.pumpWidget(
        MyoroWidgetTester(
          child: InheritedProvider.value(
            value: viewModel,
            child: MyoroMenu<String>(createViewModel: false, configuration: viewModel.state.configuration),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final scrollController = viewModel.state.scrollController;
      await tester.runAsync(() async => scrollController.jumpTo(scrollController.position.maxScrollExtent));
      await tester.pumpAndSettle();

      // ignore: invalid_use_of_protected_member
      viewModel.scrollControllerListener();
    });
  });

  group('MyoroMenuViewModel.jumpToBottomPreviousPosition', () {
    final viewModel =
        MyoroMenuViewModel<String>()..initialize(
          MyoroMenuConfiguration(
            request: () => List.generate(100, (index) => 'Item #$index').toSet(),
            itemBuilder: (item) => MyoroMenuItem.fake(),
            onEndReachedRequest: (_) => List.generate(100, (index) => 'Item #$index').toSet(),
          ),
        );

    tearDown(viewModel.dispose);

    testWidgets('MyoroMenuViewModel.jumpToBottomPreviousPosition', (tester) async {
      await tester.pumpWidget(
        MyoroWidgetTester(
          child: InheritedProvider.value(
            value: viewModel,
            child: MyoroMenu<String>(createViewModel: false, configuration: viewModel.state.configuration),
          ),
        ),
      );
      await tester.pumpAndSettle();

      if (viewModel.state.scrollController.hasClients) {
        viewModel.state.onEndReachedPosition = 0;
        // ignore: invalid_use_of_protected_member
        viewModel.jumpToBottomPreviousPosition();
      }
    });
  });
}
