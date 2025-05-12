import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final VoidCallback? onPrevious = faker.randomGenerator.boolean() ? () {} : null;
  final String title = faker.lorem.word();

  testWidgets('StoryboardScreen', (WidgetTester tester) async {
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: StoryboardScreen(
          onPrevious: onPrevious,
          title: title,
          body: const SizedBox.shrink(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(StoryboardScreen), findsAtLeastNWidgets(1));
    expect(find.byType(MyoroScreen), findsAtLeastNWidgets(1));
    expect(find.byType(MyoroAppBar), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.byType(MyoroIconTextButton), findsAtLeastNWidgets(1));
  });
}
