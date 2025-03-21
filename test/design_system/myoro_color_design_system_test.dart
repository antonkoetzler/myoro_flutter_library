import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroColorDesignSystem].
void main() {
  const primaryDarkModeColor = Color(0xFF181818);
  const primaryLightModeColor = Color(0xFFEDE6D6);

  void expectMyoroColorDesignSystemContextColors(BuildContext context) {
    expect(
      MyoroColorDesignSystem.primary(context),
      context.isDarkMode
          ? MyoroDarkModeColorDesignSystem.primary
          : MyoroLightModeColorDesignSystem.primary,
    );
    expect(
      MyoroColorDesignSystem.secondary(context),
      context.isDarkMode
          ? MyoroDarkModeColorDesignSystem.secondary
          : MyoroLightModeColorDesignSystem.secondary,
    );
  }

  testWidgets('MyoroColorDesignSystem', (WidgetTester tester) async {
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

    expectMyoroColorDesignSystemContextColors(context);
    themeModeNotifier.value = ThemeMode.light;
    expectMyoroColorDesignSystemContextColors(context);
    expect(MyoroColorDesignSystem.success, Colors.green);
    expect(MyoroColorDesignSystem.error, Colors.red);
    expect(MyoroColorDesignSystem.onError, Colors.white);
    expect(MyoroColorDesignSystem.transparent, Colors.transparent);
    expect(MyoroColorDesignSystem.attention, Colors.cyan);

    themeModeNotifier.dispose();
  });

  test('MyoroDarkModeColorDesignSystem', () {
    expect(MyoroDarkModeColorDesignSystem.primary, primaryDarkModeColor);
    expect(MyoroDarkModeColorDesignSystem.secondary, primaryLightModeColor);
  });

  test('MyoroLightModeColorDesignSystem', () {
    expect(MyoroLightModeColorDesignSystem.primary, primaryLightModeColor);
    expect(MyoroLightModeColorDesignSystem.secondary, primaryDarkModeColor);
  });
}
