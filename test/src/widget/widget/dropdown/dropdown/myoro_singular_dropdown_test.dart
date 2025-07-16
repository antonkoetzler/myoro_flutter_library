import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();
  final configuration = MyoroSingularDropdownConfiguration(
    menuConfiguration: MyoroMenuConfiguration(
      request: () => items,
      itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
    ),
    selectedItemBuilder: (item) => item,
  );

  Future<void> testCase(
    WidgetTester tester,
    MyoroSingularDropdownConfiguration<String> Function() configurationBuilder,
    Function(MyoroSingularDropdownViewModel<String>) callback,
  ) async {
    final viewModel = MyoroSingularDropdownViewModel<String>();

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Provider.value(
          value: viewModel,
          child: MyoroSingularDropdown<String>(createViewModel: false, configuration: configurationBuilder()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingularDropdown<String>), findsOneWidget);
    await callback(viewModel);

    viewModel.dispose();
  }

  testWidgets('Selecting an item in the MyoroSingularDropdown', (tester) async {
    await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.expanding), (
      viewModel,
    ) async {
      // Line coverage ignore this lul.
      //
      // It's because there are no instances of the getter being used but it's good to have.
      viewModel.state.inputSize;

      viewModel.toggleMenu();
      await tester.pumpAndSettle();
      await tester.tap(find.text(items.first));
      await tester.pumpAndSettle();
      expect(viewModel.controller.selectedItems, {items.first});
    });
  });

  testWidgets('MyoroSingularDropdown with [MyoroDropdownConfiguration.checkboxOnChanged] provided', (tester) async {
    var onChangedExecutedQuantity = 0;

    await testCase(tester, () => configuration.copyWith(checkboxOnChanged: (_, _) => onChangedExecutedQuantity += 1), (
      viewModel,
    ) async {
      final checkboxFinder = find.byType(MyoroCheckbox);
      expect(checkboxFinder, findsOneWidget);
      await tester.tap(checkboxFinder);
      await tester.pumpAndSettle();
      expect(viewModel.controller.enabled, isFalse);
      expect(onChangedExecutedQuantity, 1);
      await tester.tap(checkboxFinder);
      await tester.pumpAndSettle();
      expect(viewModel.controller.enabled, isTrue);
      expect(onChangedExecutedQuantity, 2);
    });
  });

  testWidgets(
    'MyoroSingularDropdown with [MyoroDropdownConfiguration.menuTypeEnum] as [MyoroDropdownMenuTypeEnum.overlay]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.overlay), (
        viewModel,
      ) async {
        viewModel.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroSingularDropdown with [MyoroDropdownConfiguration.menuTypeEnum] as [MyoroDropdownMenuTypeEnum.expanding]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.expanding), (
        viewModel,
      ) async {
        viewModel.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroSingularDropdown with [MyoroDropdownConfiguration.menuTypeEnum] as [MyoroDropdownMenuTypeEnum.modal]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.modal), (
        viewModel,
      ) async {
        viewModel.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroModal), findsOneWidget);
        expect(find.byType(MyoroMenu<String>), findsOneWidget);

        // Get the connected (via [TapRegion.groupId]) [TapRegion]s of the dropdown.
        final allTapRegions = find.byType(TapRegion);

        // Get bounds of all TapRegions
        final allRects = allTapRegions.evaluate().map((e) => tester.getRect(find.byWidget(e.widget))).toList();

        // Find the bottommost point of all TapRegions
        final maxBottom = allRects.map((rect) => rect.bottom).reduce((a, b) => a > b ? a : b);

        // Tap below all TapRegions
        await tester.tapAt(Offset(allRects.first.center.dx, maxBottom + 10));
        await tester.pumpAndSettle();
      });
    },
  );

  testWidgets('MyoroSingularDrodpown with [MyoroDropdownConfiguration.allowItemClearing] as true', (tester) async {
    final items = List.generate(faker.randomGenerator.integer(10, min: 1), (index) => 'Item #$index').toSet();

    await testCase(
      tester,
      () => configuration.copyWith(
        allowItemClearing: true,
        menuConfiguration: configuration.menuConfiguration.copyWith(request: () => items),
      ),
      (viewModel) async {
        viewModel.controller.toggleItem(items.first);
        await tester.pumpAndSettle();
        // [MyoroInput]'s close button to clear the selected items.
        await tester.tap(find.byIcon(Icons.close), warnIfMissed: false);
        await tester.pumpAndSettle();
      },
    );
  });

  testWidgets('Opening MyoroSingularDropdown menu, then closing it via _Menu\'s TapRegion.onTapOutside', (
    tester,
  ) async {
    await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.expanding), (
      viewModel,
    ) async {
      viewModel.toggleMenu();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroMenu<String>), findsOneWidget);

      // Get the connected (via [TapRegion.groupId]) [TapRegion]s of the dropdown.
      final allTapRegions = find.byType(TapRegion);

      // Get bounds of all TapRegions
      final allRects = allTapRegions.evaluate().map((e) => tester.getRect(find.byWidget(e.widget))).toList();

      // Find the bottommost point of all TapRegions
      final maxBottom = allRects.map((rect) => rect.bottom).reduce((a, b) => a > b ? a : b);

      // Tap below all TapRegions
      await tester.tapAt(Offset(allRects.first.center.dx, maxBottom + 10));
      await tester.pumpAndSettle();

      expect(find.byType(MyoroMenu<String>), findsNothing);
    });
  });

  testWidgets('MyoroSingularDropdown _Dropdowm.didUpdateWidget', (tester) async {
    final controllerNotifier = ValueNotifier<MyoroSingularDropdownController<String>?>(null);
    final configurationNotifier = ValueNotifier(configuration);

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: controllerNotifier,
          builder: (_, controller, _) {
            return ValueListenableBuilder(
              valueListenable: configurationNotifier,
              builder: (_, configuration, _) {
                return MyoroSingularDropdown<String>(controller: controller, configuration: configuration);
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingularDropdown<String>), findsOneWidget);
    final differentMenuTypeEnums = List.from(MyoroDropdownMenuTypeEnum.values)
      ..remove(configurationNotifier.value.menuTypeEnum);
    controllerNotifier.value = MyoroSingularDropdownController<String>();
    configurationNotifier.value = configurationNotifier.value.copyWith(
      menuTypeEnum: differentMenuTypeEnums[faker.randomGenerator.integer(differentMenuTypeEnums.length)],
    );
    await tester.pumpAndSettle();

    controllerNotifier.value?.dispose();
    controllerNotifier.dispose();
    configurationNotifier.dispose();
  });
}
