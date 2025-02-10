import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroSearchInput].
void main() {
  final MyoroInputConfiguration configuration = MyoroInputConfiguration.fake();
  final bool requestWhenChanged = faker.randomGenerator.boolean();

  testWidgets('MyoroSearchInput', (WidgetTester tester) async {
    late final MyoroSearchInputThemeExtension searchInputThemeExtension;
    late final MyoroHoverButtonThemeExtension hoverButtonThemeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            searchInputThemeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
            hoverButtonThemeExtension = context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();

            return MyoroSearchInput<String>(
              configuration: configuration,
              requestWhenChanged: requestWhenChanged,
              request: (String query) {
                return List.generate(
                  faker.randomGenerator.integer(100, min: 1),
                  (_) => faker.lorem.word(),
                );
              },
              itemBuilder: (String item) => MyoroMenuItem(text: item),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // [MyoroSearchInput].
    expect(
      find.byWidgetPredicate((Widget w) => w is Focus && w.child is MyoroForm<List<String>>),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.children.length == 2 &&
            w.children.first is MyoroInput &&
            w.children.last is ValueListenableBuilder<bool>,
      ),
      findsOneWidget,
    );

    /// [Finder] of the [Column] holding [_SearchSection].
    final searchDropdownSectionFinder = find.byWidgetPredicate(
      (Widget w) =>
          w is Column &&
          w.mainAxisSize == MainAxisSize.min &&
          w.children.length == 2 &&
          w.children.first is SizedBox &&
          (w.children.first as SizedBox).height == searchInputThemeExtension.spacing &&
          w.children.last is Flexible,
    );
    expect(searchDropdownSectionFinder, findsNothing);

    // Section holding [_SearchSection] & the respective [SizedBox] for spacing.
    final searchButtonFinder = find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroHoverButton &&
          w.configuration ==
              MyoroHoverButtonConfiguration(
                bordered: searchInputThemeExtension.searchButtonBordered,
              ) &&
          w.onPressed != null,
    );
    expect(searchButtonFinder, findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == const EdgeInsets.all(7.5) &&
            w.child is Icon &&
            (w.child as Icon).color == hoverButtonThemeExtension.onPrimaryColor &&
            (w.child as Icon).icon == searchInputThemeExtension.searchButtonIcon,
      ),
      findsOneWidget,
    );

    // Activating [_SearchSection].
    await tester.tap(searchButtonFinder);
    await tester.pump();
    expect(searchDropdownSectionFinder, findsOneWidget);

    // [_SearchSection].
    expect(find.byType(MyoroMenu<String>), findsOneWidget);
  });
}
