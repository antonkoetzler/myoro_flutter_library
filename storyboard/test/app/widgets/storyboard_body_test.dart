import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [StoryboardBody].
void main() {
  testWidgets('StoryboardBody', (WidgetTester tester) async {
    late final StoryboardBodyThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<StoryboardBodyThemeExtension>();
            return const StoryboardBody();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(StoryboardBody), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.crossAxisAlignment == CrossAxisAlignment.start &&
            w.children.length == 2 &&
            w.children.first is Row &&
            (w.children.first as Row).crossAxisAlignment == CrossAxisAlignment.start &&
            (w.children.first as Row).children.length == 2 &&
            (w.children.first as Row).children.first is IntrinsicWidth &&
            (w.children.first as Row).children.last is MyoroBasicDivider &&
            ((w.children.first as Row).children.last as MyoroBasicDivider).configuration.direction.isVertical &&
            w.children.last is Expanded,
      ),
      findsOneWidget,
    );
    expect(find.byType(ValueListenableBuilder<String?>), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is SingleChildScrollView && w.child is Column && (w.child as Column).children.length == WidgetListingEnum.values.length,
      ),
      findsOneWidget,
    );
    expect(
      MyoroBasicDivider.finder(
        direction: Axis.horizontal,
        directionEnabled: true,
        shortValue: themeExtension.widgetListingCategoryDividerShortValue,
        shortValueEnabled: true,
        padding: themeExtension.widgetListingCategoryDividerPadding,
        paddingEnabled: true,
      ),
      findsNWidgets(WidgetListingEnum.values.length - 1),
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == themeExtension.widgetListingCategoryPadding &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).children.length == 1,
      ),
      findsNWidgets(WidgetListingEnum.values.length),
    );
    expect(
      MyoroIconTextHoverButton.finder(
        textStyle: themeExtension.widgetListingCategoryDropdownButtonTextStyle,
        textStyleEnabled: true,
      ),
      findsNWidgets(WidgetListingEnum.values.length),
    );
  });
}
