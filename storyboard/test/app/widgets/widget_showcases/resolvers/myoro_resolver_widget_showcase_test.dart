import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroResolverWidgetShowcase].
void main() {
  testWidgets('MyoroResolverWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroResolverWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroResolverWidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroResolver<String>), findsOneWidget);

    // [_RefreshButtons].
    expect(find.byType(MyoroIconTextHoverButton), findsNWidgets(3));
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroIconTextHoverButton &&
            w.text == 'Click to execute a successful request',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroIconTextHoverButton &&
            w.text == 'Click to execute an unsuccessful request',
      ),
      findsOneWidget,
    );
  });
}
