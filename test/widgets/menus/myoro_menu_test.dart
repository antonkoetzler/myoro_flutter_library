import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroMenu].
void main() {
  final constraints =
      faker.randomGenerator.boolean()
          ? BoxConstraints(
            minWidth: faker.randomGenerator.integer(500, min: 100).toDouble(),
          )
          : null;

  Future<MyoroMenuThemeExtension> pumpWidget(
    WidgetTester tester,
    MyoroDataConfiguration<String> dataConfiguration, {
    MyoroMenuSearchCallback<String>? searchCallback,
    bool pump = false,
    bool pumpAndSettle = true,
  }) async {
    assert(!(pump && pumpAndSettle));

    late final MyoroMenuThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension =
                context.resolveThemeExtension<MyoroMenuThemeExtension>();

            return MyoroMenu<String>(
              constraints: constraints,
              searchCallback: searchCallback,
              dataConfiguration: dataConfiguration,
              itemBuilder:
                  (String item) => MyoroMenuItem.fake().copyWith(text: item),
            );
          },
        ),
      ),
    );
    if (pump) await tester.pump();
    if (pumpAndSettle) await tester.pumpAndSettle();

    return themeExtension;
  }

  void sharedExpects(MyoroMenuThemeExtension themeExtension) {
    expect(find.byType(MyoroMenu<String>), findsOneWidget);

    // [MyoroMenuItem].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.decoration ==
                BoxDecoration(
                  color: themeExtension.primaryColor,
                  border: themeExtension.border,
                  borderRadius: themeExtension.borderRadius,
                ) &&
            w.child is ConstrainedBox &&
            (w.child as ConstrainedBox).constraints ==
                (constraints ?? const BoxConstraints()) &&
            (w.child as ConstrainedBox).child is MyoroResolver,
      ),
      findsOneWidget,
    );
  }

  /// [_Loader] expect.
  void expectLoader() {
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Center && w.child is MyoroCircularLoader,
      ),
      findsOneWidget,
    );
  }

  testWidgets('MyoroMenu idle state', (WidgetTester tester) async {
    sharedExpects(
      await pumpWidget(
        tester,
        MyoroDataConfiguration<String>(
          staticItems: List.generate(
            faker.randomGenerator.integer(100),
            (_) => faker.lorem.word(),
          ),
        ),
        pumpAndSettle: false,
      ),
    );
    expectLoader();
  });

  testWidgets('MyoroMenu loading state', (WidgetTester tester) async {
    // Use a Completer to control when the Future completes without timing errors.
    final completer = Completer<List<String>>();

    sharedExpects(
      await pumpWidget(
        tester,
        MyoroDataConfiguration<String>(
          asyncronousItems: (_) async => completer.future,
        ),
        pump: true,
        pumpAndSettle: false,
      ),
    );
    expectLoader();

    completer.complete(
      List.generate(
        faker.randomGenerator.integer(100),
        (_) => faker.lorem.word(),
      ),
    );
  });

  testWidgets('MyoroMenu success state', (WidgetTester tester) async {
    final MyoroMenuThemeExtension themeExtension = await pumpWidget(
      tester,
      MyoroDataConfiguration<String>(
        staticItems: List.generate(
          faker.randomGenerator.integer(100),
          (_) => faker.lorem.word(),
        ),
      ),
      searchCallback: (_, __) => [],
    );

    sharedExpects(themeExtension);

    // [_Items].
    final borderRadius = themeExtension.borderRadius;
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is ClipRRect &&
            w.clipBehavior == Clip.hardEdge &&
            w.borderRadius ==
                borderRadius.copyWith(
                  topLeft: Radius.circular(borderRadius.topLeft.x - 4),
                  topRight: Radius.circular(borderRadius.topLeft.x - 4),
                  bottomLeft: Radius.circular(borderRadius.topLeft.x - 4),
                  bottomRight: Radius.circular(borderRadius.topLeft.x - 4),
                ) &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).children.length == 2 &&
            // (w.child as Column).children.first is _SearchBar &&
            (w.child as Column).children.last is Flexible &&
            ((w.child as Column).children.last as Flexible).child
                is SingleChildScrollView &&
            (((w.child as Column).children.last as Flexible).child
                        as SingleChildScrollView)
                    .child
                is Column,
      ),
      findsOneWidget,
    );

    // [_SearchBar].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == themeExtension.searchBarPadding &&
            w.child is MyoroInput &&
            (w.child as MyoroInput).configuration.inputStyle ==
                themeExtension.searchBarInputStyle,
      ),
      findsOneWidget,
    );

    // Executing [MyoroMenu.searchCallback] provided to display the empty message dialog.
    await tester.enterText(
      find.byType(MyoroInput),
      'Skibidi',
    ); // Executes when text changes.
    await tester.pumpAndSettle();

    // Empty message [_DialogText].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Text &&
            w.data == 'No items to display.' &&
            w.style == themeExtension.dialogTextStyle,
      ),
      findsOneWidget,
    );
  });

  testWidgets('MyoroMenu error state', (WidgetTester tester) async {
    sharedExpects(
      await pumpWidget(
        tester,
        MyoroDataConfiguration<String>(
          asyncronousItems: (_) => throw Exception(),
        ),
      ),
    );
  });
}
