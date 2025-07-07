import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class _FooThemeExtension extends ThemeExtension<_FooThemeExtension> {
  const _FooThemeExtension();

  @override
  _FooThemeExtension lerp(covariant ThemeExtension<_FooThemeExtension>? other, double t) {
    return this;
  }

  @override
  _FooThemeExtension copyWith() {
    return this;
  }
}

void main() {
  testWidgets('MyoroBuildContextExtension', (WidgetTester tester) async {
    late final BuildContext context;
    final isDarkMode = faker.randomGenerator.boolean();

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // [MyoroBuildContextExtension.isDarkMode]
    expect(context.isDarkMode, isDarkMode);

    // [MyoroBuildContextExtension.themeData]
    expect(context.themeData, Theme.of(context));

    // [MyoroBuildContextExtension.colorScheme]
    expect(context.colorScheme, ColorScheme.of(context));

    // [MyoroBuildContextExtension.textTheme]
    expect(context.textTheme, TextTheme.of(context));

    // [MyoroBuildContextExtension.navigator]
    expect(context.navigator, Navigator.of(context));

    // [MyoroBuildContextExtension.overlay]
    expect(context.overlay, Overlay.of(context));

    // [MyoroBuildContextExtension.mediaQuery]
    expect(context.mediaQuery, MediaQuery.of(context));

    // [MyoroBuildContextExtension.themeExtensions]
    expect(context.themeExtensions, Theme.of(context).extensions);

    // [MyoroBuildContextExtension.resolveThemeExtension]
    expect(() => context.resolveThemeExtension<MyoroCardThemeExtension>(), returnsNormally);
    expect(() => context.resolveThemeExtension<_FooThemeExtension>(), throwsException);

    // [MyoroBuildContextExtension.openDrawer] and [MyoroBuildContextExtension.closeDrawer]
    context.openDrawer(drawer: const MyoroDrawer(configuration: MyoroDrawerConfiguration(child: SizedBox.shrink())));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);
    context.closeDrawer();
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsNothing);

    // [MyoroBuildContextExtension.showSnackBar] and [MyoroBuildContextExtension.closeSnackBar]
    context.showSnackBar(
      snackBar: MyoroSnackBar(configuration: MyoroSnackBarConfiguration(message: faker.lorem.word())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSnackBar), findsOneWidget);
    context.closeSnackBar();
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSnackBar), findsNothing);
  });
}
