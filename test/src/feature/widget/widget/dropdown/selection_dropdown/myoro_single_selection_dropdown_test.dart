import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final Set<String> items = List.generate(
    faker.randomGenerator.integer(10, min: 1),
    (int index) => 'Item #$index',
  ).toSet();
  final configuration = MyoroSingleSelectionDropdownConfiguration<String>(
    menuConfiguration: MyoroSingleMenuConfiguration<String>(
      request: () => items,
      itemBuilder: (item) => MyoroMenuItem(
        iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
          textConfiguration: MyoroTextConfiguration(text: item),
        ),
      ),
    ),
    selectedItemBuilder: (item) => item,
  );

  Future<void> testCase(
    WidgetTester tester,
    MyoroSingleSelectionDropdownConfiguration<String> Function() configurationBuilder,
    Function(MyoroSingleSelectionDropdownController<String> controller) callback,
  ) async {
    final controller = MyoroSingleSelectionDropdownController<String>(configuration: configurationBuilder());
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingleSelectionDropdown<String>(controller: controller)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingleSelectionDropdown<String>), findsOneWidget);
    await callback(controller);
    controller.dispose();
  }

  testWidgets('Selecting an item in the MyoroSingleSelectionDropdown', (tester) async {
    await testCase(tester, () => configuration, (controller) async {
      controller.toggleMenu();
      await tester.pumpAndSettle();
      await tester.tap(find.text(items.first));
      await tester.pumpAndSettle();
      expect(controller.selectedItem, items.first);
    });
  });

  testWidgets('MyoroSingleSelectionDropdown with [MyoroSelectionDropdownConfiguration.checkboxOnChanged] provided', (
    tester,
  ) async {
    var onChangedExecutedQuantity = 0;

    await testCase(tester, () => configuration.copyWith(checkboxOnChanged: (_, _) => onChangedExecutedQuantity += 1), (
      controller,
    ) async {
      final checkboxFinder = find.byType(MyoroCheckbox);
      expect(checkboxFinder, findsOneWidget);
      await tester.tap(checkboxFinder);
      await tester.pumpAndSettle();
      expect(controller.enabled, isFalse);
      expect(onChangedExecutedQuantity, 1);
      await tester.tap(checkboxFinder);
      await tester.pumpAndSettle();
      expect(controller.enabled, isTrue);
      expect(onChangedExecutedQuantity, 2);
    });
  });

  testWidgets(
    'MyoroSingleSelectionDropdown with [MyoroSelectionDropdownConfiguration.menuTypeEnum] as [MyoroSelectionDropdownMenuTypeEnum.overlay]',
    (tester) async {
      await testCase(tester, () => configuration, (controller) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroSingleSelectionDropdown with [MyoroSelectionDropdownConfiguration.menuTypeEnum] as [MyoroSelectionDropdownMenuTypeEnum.expanding]',
    (tester) async {
      await testCase(tester, () => configuration, (controller) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroSingleSelectionDropdown with [MyoroSelectionDropdownConfiguration.menuTypeEnum] as [MyoroSelectionDropdownMenuTypeEnum.modal]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroSelectionDropdownMenuTypeEnum.modal), (
        controller,
      ) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroModal), findsOneWidget);
        expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);

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

  testWidgets('MyoroSingleSelectionDropdown with [MyoroSelectionDropdownConfiguration.allowItemClearing] as true', (
    tester,
  ) async {
    final items = List.generate(faker.randomGenerator.integer(10, min: 1), (index) => 'Item #$index').toSet();

    await testCase(tester, () => configuration, (controller) async {
      controller.toggleItem(items.first);
      await tester.pumpAndSettle();
      // [MyoroInput]'s close button to clear the selected items.
      await tester.tap(find.byIcon(Icons.close), warnIfMissed: false);
      await tester.pumpAndSettle();
    });
  });

  testWidgets('Opening MyoroSingleSelectionDropdown menu, then closing it via _Menu\'s TapRegion.onTapOutside', (
    tester,
  ) async {
    await testCase(tester, () => configuration, (controller) async {
      controller.toggleMenu();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);

      // Get the connected (via [TapRegion.groupId]) [TapRegion]s of the dropdown.
      final allTapRegions = find.byType(TapRegion);

      // Get bounds of all TapRegions
      final allRects = allTapRegions.evaluate().map((e) => tester.getRect(find.byWidget(e.widget))).toList();

      // Find the bottommost point of all TapRegions
      final maxBottom = allRects.map((rect) => rect.bottom).reduce((a, b) => a > b ? a : b);

      // Tap below all TapRegions
      await tester.tapAt(Offset(allRects.first.center.dx, maxBottom + 10));
      await tester.pumpAndSettle();

      expect(find.byType(MyoroSingleMenu<String>), findsNothing);
    });
  });

  testWidgets(
    'MyoroSingleSelectionDropdown without MyoroSingleSelectionDropdown.configuration provided and it\'s didUpdateWidget',
    (tester) async {
      final configurationNotifier = ValueNotifier(configuration);
      await tester.pumpWidget(
        MyoroWidgetTester(
          child: ValueListenableBuilder(
            valueListenable: configurationNotifier,
            builder: (_, configuration, _) => MyoroSingleSelectionDropdown<String>(configuration: configuration),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(MyoroSingleSelectionDropdown<String>), findsOneWidget);
      configurationNotifier.value = configurationNotifier.value;
      await tester.pumpAndSettle();
      configurationNotifier.dispose();
    },
  );

  testWidgets('MyoroSingleSelectionDropdown assertion case', (tester) async {
    expect(
      () => MyoroSingleSelectionDropdown<String>(
        controller: MyoroSingleSelectionDropdownController(configuration: configuration),
        configuration: configuration,
      ),
      throwsAssertionError,
    );
  });
}
