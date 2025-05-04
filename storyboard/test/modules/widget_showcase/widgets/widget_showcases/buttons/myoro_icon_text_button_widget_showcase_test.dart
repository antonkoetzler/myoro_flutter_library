import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroIconTextButtonWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(child: MyoroIconTextButtonWidgetShowcase()),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroIconTextButtonWidgetShowcase), findsOneWidget);
    expect(find.byType(MultiBlocProvider), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroButtonWidgetShowcaseCursorOption), findsOneWidget);
    expect(
      find.byType(MyoroButtonWidgetShowcaseBorderRadiusOption),
      findsOneWidget,
    );
    expect(
      find.byType(MyoroButtonWidgetShowcaseBackgroundColorBuilderOption),
      findsOneWidget,
    );
    expect(
      find.byType(MyoroButtonWidgetShowcaseBorderBuilderOption),
      findsOneWidget,
    );
    expect(
      find.byType(MyoroButtonWidgetShowcaseOnTapDownOption),
      findsOneWidget,
    );
    expect(find.byType(MyoroButtonWidgetShowcaseOnTapUpOption), findsOneWidget);
    expect(find.byType(MyoroIconTextButton), findsOneWidget);
    expect(
      find.widgetWithText(WidgetShowcaseOption, 'Invert icon and text.'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(
        WidgetShowcaseOption,
        'Spacing between icon and text.',
      ),
      findsOneWidget,
    );
    expect(find.byType(PaddingWidgetShowcaseOption), findsOneWidget);
    expect(
      find.widgetWithText(
        MyoroTapStatusEnumWidgetShowcaseOption,
        'Content color builder',
      ),
      findsOneWidget,
    );
    expect(find.byType(IconWidgetShowcaseOption), findsOneWidget);
    expect(
      find.widgetWithText(WidgetShowcaseOption, 'Icon size'),
      findsOneWidget,
    );
    expect(find.widgetWithText(WidgetShowcaseOption, 'Text'), findsOneWidget);
    expect(
      find.widgetWithText(WidgetShowcaseOption, 'Text max lines'),
      findsOneWidget,
    );
    expect(find.byType(TextOverflowWidgetShowcaseOption), findsOneWidget);
    expect(find.byType(TextAlignWidgetShowcaseOption), findsOneWidget);
    expect(find.byType(TextStyleWidgetShowcaseOption), findsOneWidget);
  });
}
