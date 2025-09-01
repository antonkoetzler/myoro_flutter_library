import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();
  final configuration = MyoroSingularDropdownConfiguration(
    menuConfiguration: MyoroSingularMenuConfiguration(
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
    MyoroSingularDropdownConfiguration<String> Function() configurationBuilder,
    Function(MyoroSingularDropdownController<String> controller) callback,
  ) async {
    final controller = MyoroSingularDropdownController<String>(configuration: configurationBuilder());
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingularDropdown<String>(controller: controller)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingularDropdown<String>), findsOneWidget);
    await callback(controller);
    controller.dispose();
  }

  testWidgets('Selecting an item in the MyoroSingularDropdown', (tester) async {
    await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.expanding), (
      controller,
    ) async {
      controller.toggleMenu();
      await tester.pumpAndSettle();
      await tester.tap(find.text(items.first));
      await tester.pumpAndSettle();
      expect(controller.selectedItem, items.first);
    });
  });

  testWidgets('MyoroSingularDropdown with [MyoroDropdownConfiguration.checkboxOnChanged] provided', (tester) async {
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
    'MyoroSingularDropdown with [MyoroDropdownConfiguration.menuTypeEnum] as [MyoroDropdownMenuTypeEnum.overlay]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.overlay), (
        controller,
      ) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroSingularMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroSingularDropdown with [MyoroDropdownConfiguration.menuTypeEnum] as [MyoroDropdownMenuTypeEnum.expanding]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.expanding), (
        controller,
      ) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroSingularMenu<String>), findsOneWidget);
      });
    },
  );

  testWidgets(
    'MyoroSingularDropdown with [MyoroDropdownConfiguration.menuTypeEnum] as [MyoroDropdownMenuTypeEnum.modal]',
    (tester) async {
      await testCase(tester, () => configuration.copyWith(menuTypeEnum: MyoroDropdownMenuTypeEnum.modal), (
        controller,
      ) async {
        controller.toggleMenu();
        await tester.pumpAndSettle();
        expect(find.byType(MyoroModal), findsOneWidget);
        expect(find.byType(MyoroSingularMenu<String>), findsOneWidget);

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
      (controller) async {
        controller.toggleItem(items.first);
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
      controller,
    ) async {
      controller.toggleMenu();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroSingularMenu<String>), findsOneWidget);

      // Get the connected (via [TapRegion.groupId]) [TapRegion]s of the dropdown.
      final allTapRegions = find.byType(TapRegion);

      // Get bounds of all TapRegions
      final allRects = allTapRegions.evaluate().map((e) => tester.getRect(find.byWidget(e.widget))).toList();

      // Find the bottommost point of all TapRegions
      final maxBottom = allRects.map((rect) => rect.bottom).reduce((a, b) => a > b ? a : b);

      // Tap below all TapRegions
      await tester.tapAt(Offset(allRects.first.center.dx, maxBottom + 10));
      await tester.pumpAndSettle();

      expect(find.byType(MyoroSingularMenu<String>), findsNothing);
    });
  });

  testWidgets('MyoroSingularDropdown without MyoroSingularDropdown.configuration provided and it\'s didUpdateWidget', (
    tester,
  ) async {
    final configurationNotifier = ValueNotifier(configuration);
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: configurationNotifier,
          builder: (_, configuration, _) => MyoroSingularDropdown<String>(configuration: configuration),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingularDropdown<String>), findsOneWidget);
    configurationNotifier.value = configurationNotifier.value.copyWith(
      allowItemClearing: !configurationNotifier.value.allowItemClearing,
    );
    await tester.pumpAndSettle();
    configurationNotifier.dispose();
  });

  testWidgets('MyoroSingularDropdown assertion case', (tester) async {
    expect(
      () => MyoroSingularDropdown<String>(
        controller: MyoroSingularDropdownController(configuration: configuration),
        configuration: configuration,
      ),
      throwsAssertionError,
    );
  });
}
