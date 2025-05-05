import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final configuration = MyoroTapStatusEnumWidgetShowcaseOptionConfiguration.fake();

  testWidgets('MyoroTapStatusEnumWidgetShowcaseOption', (WidgetTester tester) async {
    late final WidgetShowcaseOptionThemeExtension themeExtension;

    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();
            return MyoroTapStatusEnumWidgetShowcaseOption(configuration: configuration);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroTapStatusEnumWidgetShowcaseOption), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is WidgetShowcaseOption &&
            w.labelConfiguration == configuration.labelConfiguration &&
            w.child is Column &&
            (w.child as Column).mainAxisSize == MainAxisSize.min &&
            (w.child as Column).spacing == themeExtension.spacing &&
            (w.child as Column).children.length == 3 &&
            (w.child as Column).children.first is ColorWidgetShowcaseOption &&
            ((w.child as Column).children.first as ColorWidgetShowcaseOption)
                    .labelConfiguration
                    ?.label ==
                'Idle color' &&
            (w.child as Column).children[1] is ColorWidgetShowcaseOption &&
            ((w.child as Column).children[1] as ColorWidgetShowcaseOption)
                    .labelConfiguration
                    ?.label ==
                'Hover color' &&
            (w.child as Column).children.last is ColorWidgetShowcaseOption &&
            ((w.child as Column).children.last as ColorWidgetShowcaseOption)
                    .labelConfiguration
                    ?.label ==
                'Tap color',
      ),
      findsOneWidget,
    );
  });
}
