import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  Future<void> testCase(
    WidgetTester tester,
    MyoroMultiDropdownConfiguration<String> Function() configurationBuilder,
    Function(MyoroMultiDropdownController<String> controller) callback,
  ) async {
    final controller = MyoroMultiDropdownController<String>(configuration: configurationBuilder());
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMultiDropdown<String>(controller: controller, child: const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiDropdown<String>), findsOneWidget);
    await callback(controller);
    controller.dispose();
  }

  testWidgets('MyoroMultiDropdown with controller', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    await testCase(tester, () => configuration, (controller) async {
      expect(controller, isA<MyoroMultiDropdownController<String>>());
    });
  });

  testWidgets('MyoroMultiDropdown with configuration', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMultiDropdown<String>(configuration: configuration, child: const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiDropdown<String>), findsOneWidget);
  });

  testWidgets('MyoroMultiDropdown with overlay type', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.overlay,
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    await testCase(tester, () => configuration, (controller) async {
      controller.toggle();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroMultiDropdown with expanding type', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.expanding,
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    await testCase(tester, () => configuration, (controller) async {
      controller.toggle();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroMultiDropdown with modal type', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.modal,
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    await testCase(tester, () => configuration, (controller) async {
      controller.toggle();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroModal), findsOneWidget);
      expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroMultiDropdown with bottomSheet type', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.bottomSheet,
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    await testCase(tester, () => configuration, (controller) async {
      controller.toggle();
      await tester.pumpAndSettle();
      expect(find.byType(MyoroModal), findsOneWidget);
      expect(find.byType(MyoroMultiMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroMultiDropdown assertion case - both controller and configuration provided', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    expect(
      () => MyoroMultiDropdown<String>(
        controller: MyoroMultiDropdownController(configuration: configuration),
        configuration: configuration,
        child: const SizedBox.shrink(),
      ),
      throwsAssertionError,
    );
  });

  testWidgets('MyoroMultiDropdown assertion case - neither controller nor configuration provided', (tester) async {
    expect(() => MyoroMultiDropdown<String>(child: const SizedBox.shrink()), throwsAssertionError);
  });

  testWidgets('MyoroMultiDropdown with custom style', (tester) async {
    final configuration = MyoroMultiDropdownConfiguration<String>(
      menuConfiguration: MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    const style = MyoroDropdownStyle(spacing: 20.0);
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroMultiDropdown<String>(configuration: configuration, style: style, child: const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroMultiDropdown<String>), findsOneWidget);
  });
}
