import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroResizeDivider].
void main() {
  final configuration = MyoroBasicDividerConfiguration.fake();
  final isHorizontal = configuration.direction.isHorizontal;

  bool getGestureDetectorPredicate(Widget w) {
    return w is GestureDetector &&
        (isHorizontal ? w.onHorizontalDragUpdate == null : w.onHorizontalDragUpdate != null) &&
        (isHorizontal ? w.onVerticalDragUpdate != null : w.onVerticalDragUpdate == null) &&
        w.child is Container;
  }

  testWidgets('MyoroResizeDivider', (WidgetTester tester) async {
    late final MyoroResizeDividerThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroResizeDividerThemeExtension>();

            return MyoroResizeDivider(
              configuration: configuration,
              dragCallback: (DragUpdateDetails details) {
                debugPrint('[MyoroResizeDivider.dragCallback] executed.');
                expect(true, isTrue);
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Stack &&
            w.alignment == Alignment.center &&
            w.children.length == 2 &&
            w.children.first is MyoroBasicDivider &&
            (w.children.first as MyoroBasicDivider).configuration == configuration,
      ),
      findsOneWidget,
    );

    // [_ResizeButton].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MouseRegion &&
            w.cursor == (isHorizontal ? SystemMouseCursors.resizeRow : SystemMouseCursors.resizeColumn) &&
            getGestureDetectorPredicate(w.child!) &&
            ((w.child as GestureDetector).child as Container).decoration ==
                BoxDecoration(
                  color: themeExtension.secondary,
                  borderRadius: themeExtension.resizeButtonBorderRadius,
                ),
      ),
      findsOneWidget,
    );

    // Assert that the drag is working.
    await tester.drag(find.byWidgetPredicate(getGestureDetectorPredicate), const Offset(100, 100));
  });
}
