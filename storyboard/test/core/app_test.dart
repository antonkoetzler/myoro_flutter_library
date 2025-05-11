import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

import '../exports.dart';

/// Widget test of [App].
void main() {
  final kiwiContainer = KiwiContainer();

  setUp(() {
    kiwiContainer
      ..registerSingleton<SharedPreferences>((_) => MockSharedPreferences())
      ..registerSingleton<ModulesController>((_) => ModulesController());
  });

  tearDown(() {
    kiwiContainer.clear();
  });

  testWidgets('App', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    expect(find.byType(App), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is BlocProvider<ThemeModeCubit> && w.child is BlocBuilder<ThemeModeCubit, ThemeMode>,
      ),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroApp, 'MFL Storyboard'), findsOneWidget);
  });
}
