import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroSingleMenu with buttonBuilder', () {
    testWidgets('renders MyoroButton when buttonBuilder is provided', (tester) async {
      final items = {'item1', 'item2'};

      final configuration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          buttonConfiguration: MyoroButtonConfiguration.fake(),
          buttonBuilder: (context, state) => Text('Custom Button: $item'),
        ),
      );

      await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingleMenu<String>(configuration: configuration)));

      await tester.pumpAndSettle();

      expect(find.byType(MyoroButton), findsWidgets);
      expect(find.text('Custom Button: item1'), findsOneWidget);
      expect(find.text('Custom Button: item2'), findsOneWidget);
    });

    testWidgets('renders MyoroIconTextButton when iconTextButtonConfiguration is provided', (tester) async {
      final items = {'item1', 'item2'};

      final configuration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: 'Icon Text Button: $item'),
          ),
        ),
      );

      await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingleMenu<String>(configuration: configuration)));

      await tester.pumpAndSettle();

      expect(find.byType(MyoroIconTextButton), findsWidgets);
      expect(find.text('Icon Text Button: item1'), findsOneWidget);
      expect(find.text('Icon Text Button: item2'), findsOneWidget);
    });

    testWidgets('applies selected styling when item is selected', (tester) async {
      final items = {'item1', 'item2'};

      final configuration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        selectedItem: 'item1', // item1 is initially selected
        itemBuilder: (item) => MyoroMenuItem(
          buttonConfiguration: MyoroButtonConfiguration.fake(),
          buttonBuilder: (context, state) => Text('Custom Button: $item'),
        ),
      );

      await tester.pumpWidget(MyoroWidgetTester(child: MyoroSingleMenu<String>(configuration: configuration)));

      await tester.pumpAndSettle();

      expect(find.byType(MyoroButton), findsWidgets);
      expect(find.text('Custom Button: item1'), findsOneWidget);
      expect(find.text('Custom Button: item2'), findsOneWidget);
    });
  });
}
