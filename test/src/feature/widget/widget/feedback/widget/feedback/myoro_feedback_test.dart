import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester, {
    required MyoroFeedbackConfiguration configuration,
    required void Function(MyoroFeedbackConfiguration) callback,
  }) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroFeedback(configuration: configuration)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroFeedback), findsOneWidget);
    callback(configuration);
  }

  testWidgets('MyoroFeedback with only required configuration options', (tester) async {
    await testCase(
      tester,
      configuration: MyoroFeedbackConfiguration.fake(),
      callback: (configuration) {
        expect(find.byIcon(configuration.iconConfiguration.icon), findsOneWidget);
        expect(find.text(configuration.titleConfiguration.text), findsOneWidget);
      },
    );
  });

  testWidgets('MyoroFeedback with MyoroFeedbackConfiguration.subtitleConfiguration provided', (tester) async {
    await testCase(
      tester,
      configuration: MyoroFeedbackConfiguration.fake().copyWith(subtitleConfiguration: MyoroTextConfiguration.fake()),
      callback: (configuration) => expect(find.text(configuration.subtitleConfiguration!.text), findsOneWidget),
    );
  });

  testWidgets('MyoroFeedback with MyoroFeedbackConfiguration.actionButtonConfiguration provided', (tester) async {
    await testCase(
      tester,
      configuration: MyoroFeedbackConfiguration.fake().copyWith(
        actionButtonConfiguration: MyoroIconTextButtonConfiguration.fake(),
      ),
      callback: (_) => expect(find.byType(MyoroIconTextButton), findsOneWidget),
    );
  });
}
