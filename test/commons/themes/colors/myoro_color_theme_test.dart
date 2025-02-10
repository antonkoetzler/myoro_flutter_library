import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroColorTheme].
void main() {
  const primaryDarkModeColor = Color(0xFF181818);
  const primaryLightModeColor = Color(0xFFEDE6D6);

  void expectMyoroColorThemeContextColors(BuildContext context) {
    expect(
      MyoroColorTheme.primary(context),
      context.isDarkMode ? MyoroDarkModeColorTheme.primary : MyoroLightModeColorTheme.primary,
    );
    expect(
      MyoroColorTheme.secondary(context),
      context.isDarkMode ? MyoroDarkModeColorTheme.secondary : MyoroLightModeColorTheme.secondary,
    );
  }

  testWidgets('MyoroColorTheme', (WidgetTester tester) async {
    final themeModeNotifier = ValueNotifier<ThemeMode>(ThemeMode.dark);
    late final BuildContext context;

    await tester.pumpWidget(
      ValueListenableBuilder(
        valueListenable: themeModeNotifier,
        builder: (_, ThemeMode themeMode, __) {
          return MyoroWidgetTester(
            themeMode: themeMode,
            child: Builder(
              builder: (BuildContext buildContext) {
                context = buildContext;
                return const SizedBox.shrink();
              },
            ),
          );
        },
      ),
    );
    await tester.pumpAndSettle();

    expectMyoroColorThemeContextColors(context);
    themeModeNotifier.value = ThemeMode.light;
    expectMyoroColorThemeContextColors(context);
    expect(MyoroColorTheme.success, Colors.green);
    expect(MyoroColorTheme.error, Colors.red);
    expect(MyoroColorTheme.onError, Colors.white);
    expect(MyoroColorTheme.transparent, Colors.transparent);
    expect(MyoroColorTheme.attention, Colors.cyan);

    themeModeNotifier.dispose();
  });

  test('MyoroDarkModeColorTheme', () {
    expect(MyoroDarkModeColorTheme.primary, primaryDarkModeColor);
    expect(MyoroDarkModeColorTheme.secondary, primaryLightModeColor);
  });

  test('MyoroLightModeColorTheme', () {
    expect(MyoroLightModeColorTheme.primary, primaryLightModeColor);
    expect(MyoroLightModeColorTheme.secondary, primaryDarkModeColor);
  });
}
