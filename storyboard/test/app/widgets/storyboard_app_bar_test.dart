import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [StoryboardAppBar].
void main() {
  testWidgets('StoryboardAppBar', (WidgetTester tester) async {
    late final StoryboardAppBarThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: Builder(
            builder: (BuildContext context) {
              themeExtension =
                  context
                      .resolveThemeExtension<StoryboardAppBarThemeExtension>();
              return const StoryboardAppBar();
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(StoryboardAppBar), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.mainAxisSize == MainAxisSize.min &&
            w.crossAxisAlignment == CrossAxisAlignment.start &&
            w.children.length == 2 &&
            w.children.first is Text &&
            (w.children.first as Text).data ==
                'myoro_flutter_library storyboard' &&
            (w.children.first as Text).overflow == TextOverflow.ellipsis &&
            (w.children.first as Text).style == themeExtension.titleTextStyle &&
            (w.children.last as Text).data ==
                'Used for testing/visualizing widgets and the design system' &&
            (w.children.last as Text).overflow == TextOverflow.ellipsis &&
            (w.children.last as Text).style == themeExtension.subtitleTextStyle,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Wrap &&
            w.spacing == themeExtension.buttonSpacing &&
            w.children.length == 2,
      ),
      findsOneWidget,
    );
    expect(
      MyoroIconTextHoverButton.finder(
        icon: themeExtension.themeButtonIcon,
        iconEnabled: true,
        tooltip: 'Toggle theme',
        tooltipEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
