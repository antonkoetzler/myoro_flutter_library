import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final Set<String> items = List.generate(
    faker.randomGenerator.integer(10, min: 1),
    (int index) => 'Item #$index',
  ).toSet();
  final configuration = MyoroMultiSelectionDropdownConfiguration<String>(
    menuConfiguration: MyoroMultiMenuConfiguration<String>(
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
    MyoroMultiSelectionDropdownConfiguration<String> Function() configurationBuilder,
    Function(MyoroMultiSelectionDropdownController<String> controller) callback,
  ) async {
    final controller = MyoroMultiSelectionDropdownController(configuration: configurationBuilder());
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroMultiSelectionDropdown<String>(controller: controller)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiSelectionDropdown<String>), findsOneWidget);
    await callback(controller);
    controller.dispose();
  }

  testWidgets('Selecting an item in the MyoroMultiSelectionDropdown', (tester) async {
    await testCase(tester, () => configuration, (controller) async {
      controller.toggleMenu();
      await tester.pumpAndSettle();
      await tester.tap(find.text(items.first));
      await tester.pumpAndSettle();
      expect(controller.selectedItems, {items.first});
    });
  });

  testWidgets('MyoroMultiSelectionDropdown with [MyoroSelectionDropdownConfiguration.checkboxOnChanged] provided', (
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
    'MyoroMultiSelectionDropdown with [MyoroSelectionDropdownConfiguration.menuTypeEnum] as [MyoroSelectionDropdownMenuTypeEnum.overlay]',
    (tester) async {
      await testCase(tester, () => configuration, (controller) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroMultiSelectionDropdown with [MyoroSelectionDropdownConfiguration.menuTypeEnum] as [MyoroSelectionDropdownMenuTypeEnum.expanding]',
    (tester) async {
      await testCase(tester, () => configuration, (controller) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroMultiSelectionDropdown with [MyoroSelectionDropdownConfiguration.menuTypeEnum] as [MyoroSelectionDropdownMenuTypeEnum.modal]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroSelectionDropdownMenuTypeEnum.modal), (
        controller,
      ) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroModal), findsOneWidget);
        expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);

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

  testWidgets('MyoroMultiSelectionDropdown with [MyoroSelectionDropdownConfiguration.allowItemClearing] as true', (
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

  testWidgets('Opening MyoroMultiSelectionDropdown menu, then closing it via _Menu\'s TapRegion.onTapOutside', (
    tester,
  ) async {
    await testCase(tester, () => configuration, (controller) async {
      controller.toggleMenu();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);

      // Get the connected (via [TapRegion.groupId]) [TapRegion]s of the dropdown.
      final allTapRegions = find.byType(TapRegion);

      // Get bounds of all TapRegions
      final allRects = allTapRegions.evaluate().map((e) => tester.getRect(find.byWidget(e.widget))).toList();

      // Find the bottommost point of all TapRegions
      final maxBottom = allRects.map((rect) => rect.bottom).reduce((a, b) => a > b ? a : b);

      // Tap below all TapRegions
      await tester.tapAt(Offset(allRects.first.center.dx, maxBottom + 10));
      await tester.pumpAndSettle();

      expect(find.byType(MyoroMultiMenu<String>), findsNothing);
    });
  });

  testWidgets(
    'MyoroMultiSelectionDropdown without MyoroMultiSelectionDropdown.configuration provided and it\'s didUpdateWidget',
    (tester) async {
      final configurationNotifier = ValueNotifier(configuration);
      await tester.pumpWidget(
        MyoroWidgetTester(
          child: ValueListenableBuilder(
            valueListenable: configurationNotifier,
            builder: (_, configuration, _) => MyoroMultiSelectionDropdown<String>(configuration: configuration),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(MyoroMultiSelectionDropdown<String>), findsOneWidget);
      configurationNotifier.value = configurationNotifier.value;
      await tester.pumpAndSettle();
      configurationNotifier.dispose();
    },
  );

  testWidgets('MyoroMultiSelectionDropdown assertion case', (tester) async {
    expect(
      () => MyoroMultiSelectionDropdown<String>(
        controller: MyoroMultiSelectionDropdownController(configuration: configuration),
        configuration: configuration,
      ),
      throwsAssertionError,
    );
  });
}
