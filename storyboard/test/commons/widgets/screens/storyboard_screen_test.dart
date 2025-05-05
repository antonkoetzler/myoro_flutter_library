import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final VoidCallback? onPrevious = faker.randomGenerator.boolean() ? () {} : null;
  final String? headerTitleText = faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  final String? headerSubtitleText = faker.randomGenerator.boolean() ? faker.lorem.word() : null;

  testWidgets('StoryboardScreen', (WidgetTester tester) async {
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: StoryboardScreen(
          onPrevious: onPrevious,
          headerTitleText: headerTitleText,
          headerSubtitleText: headerSubtitleText,
          body: const SizedBox.shrink(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(StoryboardScreen), findsAtLeastNWidgets(1));
    expect(find.byType(MyoroScreen), findsOneWidget);
    expect(find.byType(MyoroAppBar), findsOneWidget);
    if (headerTitleText != null) {
      expect(find.text(headerTitleText), findsOneWidget);
    }
    if (headerSubtitleText != null) {
      expect(find.text(headerSubtitleText), findsOneWidget);
    }
    expect(find.byType(MyoroIconTextButton), findsOneWidget);
  });
}
