import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroDropdown].
void main() {
  late final MyoroDropdownConfiguration<String> configuration;

  /// [expect] calls used in both of the [testWidget]s.
  Future<void> testDropdown(
    WidgetTester tester,
    MyoroDropdownThemeExtension themeExtension,
  ) async {
    // [_Dropdown].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is IntrinsicHeight &&
            w.child is Focus &&
            (w.child as Focus).focusNode != null &&
            (w.child as Focus).child is Stack &&
            ((w.child as Focus).child as Stack).children.length == 2,
      ),
      findsOneWidget,
    );

    // [_Input].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroInput &&
            w.key != null &&
            w.configuration.label == configuration.label &&
            w.configuration.labelTextStyle == configuration.labelTextStyle &&
            w.configuration.inputStyle == themeExtension.inputStyle &&
            w.configuration.readOnly == true &&
            w.configuration.enabled == configuration.enabled &&
            w.configuration.showClearTextButton ==
                configuration.allowItemClearing &&
            w.configuration.controller != null &&
            w.configuration.onCleared != null &&
            w.configuration.checkboxOnChanged != null,
      ),
      findsOneWidget,
    );

    // [_TriggerArea].
    expect(find.byType(ValueListenableBuilder<Set<String>>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == const EdgeInsets.only(right: 0) &&
            w.child is InkWell &&
            (w.child as InkWell).focusColor ==
                MyoroColorDesignSystem.transparent &&
            (w.child as InkWell).hoverColor ==
                MyoroColorDesignSystem.transparent &&
            (w.child as InkWell).splashColor ==
                MyoroColorDesignSystem.transparent &&
            (w.child as InkWell).highlightColor ==
                MyoroColorDesignSystem.transparent &&
            (w.child as InkWell).child is Container &&
            ((w.child as InkWell).child as Container).color ==
                MyoroColorDesignSystem.transparent,
      ),
      findsOneWidget,
    );
  }

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    configuration = MyoroDropdownConfiguration<String>(
      label: faker.lorem.word(),
      labelTextStyle:
          faker.randomGenerator.boolean()
              ? MyoroTypographyDesignSystem.instance.randomTextStyle
              : null,
      dataConfiguration: MyoroDataConfiguration(
        staticItems: List.generate(
          faker.randomGenerator.integer(1000),
          (int index) => '$index: ${faker.lorem.word()}',
        ),
      ),
      itemBuilder:
          (String item) => MyoroMenuItem(
            isHovered: faker.randomGenerator.boolean(),
            icon:
                kMyoroTestIcons[faker.randomGenerator.integer(
                  kMyoroTestIcons.length,
                )],
            iconSize:
                faker.randomGenerator.boolean()
                    ? faker.randomGenerator.decimal()
                    : null,
            text: item,
            textStyle:
                faker.randomGenerator.boolean()
                    ? MyoroTypographyDesignSystem.instance.randomTextStyle
                    : null,
            textAlign:
                TextAlign.values[faker.randomGenerator.integer(
                  TextAlign.values.length,
                )],
          ),
      itemLabelBuilder: (String item) => item,
      menuMaxHeight: faker.randomGenerator.integer(1000, min: 100).toDouble(),
      menuSearchCallback: (_, List<String> items) => items,
    );
  });

  testWidgets('MyoroSingularDropdown', (WidgetTester tester) async {
    late final MyoroDropdownThemeExtension themeExtension;

    bool enabled = true;
    String? item;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroDropdownThemeExtension>();

            return MyoroSingularDropdown<String>(
              configuration: configuration,
              onChanged: (String? newItem) {
                expect(item != newItem, isTrue);
                item = newItem;
              },
              checkboxOnChanged: (bool newEnabled, _) {
                expect(enabled != newEnabled, isTrue);
                enabled = newEnabled;
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSingularDropdown<String>), findsOneWidget);
    await testDropdown(tester, themeExtension);
  });

  testWidgets('MyoroMultiDropdown', (WidgetTester tester) async {
    late final MyoroDropdownThemeExtension themeExtension;

    List<String> items = [];
    bool enabled = true;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroDropdownThemeExtension>();

            return MyoroMultiDropdown<String>(
              configuration: configuration,
              onChanged: (List<String> newItems) {
                expect(items != newItems, isTrue);
                items = newItems;
              },
              checkboxOnChanged: (bool newEnabled, _) {
                expect(enabled != newEnabled, isTrue);
                enabled = newEnabled;
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroMultiDropdown<String>), findsOneWidget);
    await testDropdown(tester, themeExtension);
  });
}
