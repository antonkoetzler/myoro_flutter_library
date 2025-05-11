import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

final class _Cubit extends Cubit<int> {
  _Cubit() : super(0);
  void add() => emit(state + 1);
}

/// Unit test for [MyoroBuildContextExtension].
void main() {
  Widget createWidget(void Function(BuildContext context) builderCallback) {
    return MyoroWidgetTester(
      child: Builder(
        builder: (BuildContext context) {
          builderCallback.call(context);
          return const SizedBox.shrink();
        },
      ),
    );
  }

  testWidgets('MyoroBuildContextExtension getters', (WidgetTester tester) async {
    late final BuildContext context;
    await tester.pumpWidget(createWidget((buildContext) => context = buildContext));
    await tester.pumpAndSettle();
    expect(context.themeData, Theme.of(context));
    expect(context.isDarkMode, context.themeData.brightness == Brightness.dark);
    expect(context.textTheme, context.themeData.textTheme);
    expect(context.overlay, Overlay.of(context));
    expect(context.mediaQuery, MediaQuery.of(context));
  });

  testWidgets('MyoroBuildContextExtension.resolveThemeExtension', (WidgetTester tester) async {
    late final BuildContext context;
    await tester.pumpWidget(createWidget((buildContext) => context = buildContext));
    await tester.pumpAndSettle();
    expect(context.resolveThemeExtension<MyoroAppThemeExtension>(), isA<MyoroAppThemeExtension>());
  });

  testWidgets('MyoroBuildContextExtension.resolveBloc', (WidgetTester tester) async {
    late final BuildContext context;
    await tester.pumpWidget(
      BlocProvider(
        create: (_) => _Cubit(),
        child: createWidget((buildContext) => context = buildContext),
      ),
    );
    await tester.pumpAndSettle();
    expect(context.resolveBloc<_Cubit>(), isA<_Cubit>());
  });

  testWidgets('MyoroBuildContextExtension.openDrawer', (WidgetTester tester) async {
    late final BuildContext context;
    await tester.pumpWidget(createWidget((buildContext) => context = buildContext));
    await tester.pumpAndSettle();
    context.openDrawer(
      drawer: const MyoroDrawer(configuration: MyoroDrawerConfiguration(child: SizedBox.shrink())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);
  });

  testWidgets('MyoroBuildContextExtension.closeDrawer', (WidgetTester tester) async {
    late final BuildContext context;
    await tester.pumpWidget(createWidget((buildContext) => context = buildContext));
    await tester.pumpAndSettle();
    context.openDrawer(
      drawer: const MyoroDrawer(configuration: MyoroDrawerConfiguration(child: SizedBox.shrink())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsOneWidget);
    context.closeDrawer();
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDrawer), findsNothing);
  });

  testWidgets('MyoroBuildContextExtension.showSnackBar', (WidgetTester tester) async {
    late final BuildContext context;
    await tester.pumpWidget(createWidget((buildContext) => context = buildContext));
    await tester.pumpAndSettle();
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(message: 'Hello, World!'),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSnackBar), findsOneWidget);
  });

  testWidgets('MyoroBuildContextExtension.hideSnackBar', (WidgetTester tester) async {
    late final BuildContext context;
    await tester.pumpWidget(createWidget((buildContext) => context = buildContext));
    await tester.pumpAndSettle();
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(message: 'Hello, World!'),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSnackBar), findsOneWidget);
    context.hideSnackBar();
    await tester.pumpAndSettle();
    expect(find.byType(MyoroSnackBar), findsNothing);
  });
}
