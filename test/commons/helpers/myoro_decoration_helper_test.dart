import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDecorationHelper].
void main() {
  test('MyoroDecorationHelper.border', () {
    expect(
      MyoroDecorationHelper.borderRadius,
      BorderRadius.circular(kMyoroBorderRadiusLength),
    );
  });

  test('MyoroDecorationHelper.inputBorderRadius', () {
    expect(
      MyoroDecorationHelper.inputBorderRadius,
      BorderRadius.circular(kMyoroInputBorderLength),
    );
  });

  testWidgets('MyoroDecorationHelper.border', (WidgetTester tester) async {
    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      MyoroDecorationHelper.border(context),
      Border.all(width: 2, color: MyoroColorTheme.secondary(context)),
    );
  });
}
