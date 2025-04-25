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

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            searchInputThemeExtension =
                context.resolveThemeExtension<MyoroSearchInputThemeExtension>();

            return MyoroSearchInput<String>(
              configuration: configuration,
              requestWhenChanged: requestWhenChanged,
              request: (String query) {
                return List.generate(
                  faker.randomGenerator.integer(100, min: 1),
                  (_) => faker.lorem.word(),
                ).toSet();
              },
              itemBuilder:
                  (String item) => MyoroMenuItem(
                    textConfiguration: MyoroIconTextButtonTextConfiguration(
                      text: item,
                    ),
                  ),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // [MyoroSearchInput].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Focus && w.child is MyoroForm<Set<String>>,
      ),
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
          (w.children.first as SizedBox).height ==
              searchInputThemeExtension.spacing &&
          w.children.last is Flexible,
    );
    expect(searchDropdownSectionFinder, findsNothing);

    // [_SearchSection].
    final searchButtonFinder = find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroButton &&
          w.configuration?.borderBuilder != null &&
          w.configuration?.onTapUp != null,
    );
    expect(searchButtonFinder, findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Icon && w.icon == searchInputThemeExtension.searchButtonIcon,
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
