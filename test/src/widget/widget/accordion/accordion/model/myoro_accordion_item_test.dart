import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroAccordionItem', () {
    testWidgets('renders title and content widgets from builders', (tester) async {
      const titleText = 'Test Title';
      const contentText = 'Test Content';

      final item = MyoroAccordionItem(
        titleBuilder: (_) => const Text(titleText, key: Key('title')),
        contentBuilder: (_) => const Text(contentText, key: Key('content')),
      );

      await tester.pumpWidget(
        MyoroWidgetTester(
          child: Builder(
            builder: (context) {
              return Column(children: [item.titleBuilder(context), item.contentBuilder(context)]);
            },
          ),
        ),
      );

      expect(find.byKey(const Key('title')), findsOneWidget);
      expect(find.text(titleText), findsOneWidget);
      expect(find.byKey(const Key('content')), findsOneWidget);
      expect(find.text(contentText), findsOneWidget);
    });

    testWidgets('fake constructor creates non-null title and content', (tester) async {
      final item = MyoroAccordionItem.fake();

      await tester.pumpWidget(
        MyoroWidgetTester(
          child: Builder(
            builder: (context) {
              return Column(children: [item.titleBuilder(context), item.contentBuilder(context)]);
            },
          ),
        ),
      );

      expect(find.byType(Text), findsNWidgets(2));
    });
  });
}
