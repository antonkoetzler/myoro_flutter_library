import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroSingleMenu with search functionality', () {
    testWidgets('renders MyoroInput with search functionality', (tester) async {
      final items = {'item1', 'item2', 'item3'};

      final configuration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        searchCallback: (query, items) {
          return items.where((item) => item.contains(query)).toSet();
        },
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingleMenu<String>(configuration: configuration)));

      await tester.pumpAndSettle();

      expect(find.byType(MyoroInput), findsOneWidget);
      expect(find.byType(TextFormField), findsOneWidget);
    });

    testWidgets('calls search when text changes', (tester) async {
      final items = {'item1', 'item2', 'item3'};
      var searchQuery = '';

      final configuration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        searchCallback: (query, items) {
          searchQuery = query;
          return items.where((item) => item.contains(query)).toSet();
        },
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingleMenu<String>(configuration: configuration)));

      await tester.pumpAndSettle();

      // Enter text in the search field
      await tester.enterText(find.byType(TextFormField), 'item1');
      await tester.pumpAndSettle();

      // Verify that search was called
      expect(searchQuery, 'item1');
    });

    testWidgets('applies custom search bar padding from style', (tester) async {
      final items = {'item1', 'item2'};
      const customPadding = EdgeInsets.all(16.0);

      final configuration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        searchCallback: (query, items) {
          return items.where((item) => item.contains(query)).toSet();
        },
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      await tester.pumpWidget(
        MyoroWidgetTester(
          child: MyoroSingleMenu<String>(
            configuration: configuration,
            style: const MyoroMenuStyle().copyWith(searchBarPadding: customPadding),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(MyoroInput), findsOneWidget);
      expect(find.byType(Padding), findsWidgets);
      // Find the padding widget that contains the search input
      final paddingWidgets = tester.widgetList<Padding>(find.byType(Padding));
      expect(paddingWidgets.any((widget) => widget.padding == customPadding), isTrue);
    });

    testWidgets('applies custom search bar input style from style', (tester) async {
      final items = {'item1', 'item2'};
      const customInputStyle = MyoroInputStyleEnum.outlined;

      final configuration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        searchCallback: (query, items) {
          return items.where((item) => item.contains(query)).toSet();
        },
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      await tester.pumpWidget(
        MyoroWidgetTester(
          child: MyoroSingleMenu<String>(
            configuration: configuration,
            style: const MyoroMenuStyle().copyWith(searchBarInputStyle: customInputStyle),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(MyoroInput), findsOneWidget);
      final inputWidget = tester.widget<MyoroInput>(find.byType(MyoroInput));
      expect(inputWidget.configuration.inputStyle, customInputStyle);
    });
  });
}
