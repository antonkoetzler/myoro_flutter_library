import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroPieGraphWidgetShowcase].
void main() {
  testWidgets('MyoroPieGraphWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroPieGraphWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroPieGraphWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroPieGraph), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<MyoroPieGraphEnum> &&
            w.configuration.label == '[MyoroPieGraph.typeEnum]',
      ),
      findsOneWidget,
    );
  });
}
