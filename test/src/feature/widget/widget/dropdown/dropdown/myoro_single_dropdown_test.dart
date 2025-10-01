import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  Future<void> testCase(
    WidgetTester tester,
    MyoroSingleDropdownConfiguration<String> Function() configurationBuilder,
    Function(MyoroSingleDropdownController<String> controller) callback,
  ) async {
    final controller = MyoroSingleDropdownController<String>(configuration: configurationBuilder());
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroSingleDropdown<String>(controller: controller, child: const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingleDropdown<String>), findsOneWidget);
    await callback(controller);
    controller.dispose();
  }

  testWidgets('MyoroSingleDropdown with controller', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    await testCase(tester, () => configuration, (controller) async {
      expect(controller, isA<MyoroSingleDropdownController<String>>());
    });
  });

  testWidgets('MyoroSingleDropdown with configuration', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
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
        child: MyoroSingleDropdown<String>(configuration: configuration, child: const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingleDropdown<String>), findsOneWidget);
  });

  testWidgets('MyoroSingleDropdown with overlay type', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.overlay,
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
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
      expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroSingleDropdown with expanding type', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.expanding,
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
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
      expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroSingleDropdown with modal type', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.modal,
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
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
      expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroSingleDropdown with bottomSheet type', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      dropdownType: MyoroDropdownTypeEnum.bottomSheet,
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
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
      expect(find.byType(MyoroSingleMenu<String>), findsOneWidget);
    });
  });

  testWidgets('MyoroSingleDropdown assertion case - both controller and configuration provided', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
    );

    expect(
      () => MyoroSingleDropdown<String>(
        controller: MyoroSingleDropdownController(configuration: configuration),
        configuration: configuration,
        child: const SizedBox.shrink(),
      ),
      throwsAssertionError,
    );
  });

  testWidgets('MyoroSingleDropdown assertion case - neither controller nor configuration provided', (tester) async {
    expect(() => const MyoroSingleDropdown<String>(child: SizedBox.shrink()), throwsAssertionError);
  });

  testWidgets('MyoroSingleDropdown with custom style', (tester) async {
    final configuration = MyoroSingleDropdownConfiguration<String>(
      menuConfiguration: MyoroSingleMenuConfiguration<String>(
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
        child: MyoroSingleDropdown<String>(configuration: configuration, style: style, child: const SizedBox.shrink()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSingleDropdown<String>), findsOneWidget);
  });
}
