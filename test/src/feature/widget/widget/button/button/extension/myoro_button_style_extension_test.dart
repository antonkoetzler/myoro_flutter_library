import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroButtonStyleExtension', () {
    late BuildContext context;

    testWidgets('bordered function', (tester) async {
      await tester.pumpWidget(
        MyoroWidgetTester(
          child: Builder(
            builder: (ctx) {
              context = ctx;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      final style = MyoroButtonStyle.fake();
      final result = style.bordered(context);

      expect(result, isA<MyoroButtonStyle>());
    });

    testWidgets('primary function', (tester) async {
      await tester.pumpWidget(
        MyoroWidgetTester(
          child: Builder(
            builder: (ctx) {
              context = ctx;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      final style = MyoroButtonStyle.fake();
      final result = style.primary(context);

      expect(result, isA<MyoroButtonStyle>());
    });

    testWidgets('secondary function', (tester) async {
      await tester.pumpWidget(
        MyoroWidgetTester(
          child: Builder(
            builder: (ctx) {
              context = ctx;
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      final style = MyoroButtonStyle.fake();
      final result = style.secondary(context);

      expect(result, isA<MyoroButtonStyle>());
    });

    test('backgroundColorBuilder function', () {
      final style = MyoroButtonStyle.fake();
      final result = style.backgroundColorBuilder(MyoroTapStatusEnum.idle);
      expect(result, isA<Color?>());
    });

    test('backgroundColorBuilder hover status', () {
      final style = MyoroButtonStyle.fake();
      final result = style.backgroundColorBuilder(MyoroTapStatusEnum.hover);
      expect(result, isA<Color?>());
    });

    test('backgroundColorBuilder tap status', () {
      final style = MyoroButtonStyle.fake();
      final result = style.backgroundColorBuilder(MyoroTapStatusEnum.tap);
      expect(result, isA<Color?>());
    });

    test('contentColorBuilder function', () {
      final style = MyoroButtonStyle.fake();
      final result = style.contentColorBuilder(MyoroTapStatusEnum.idle);
      expect(result, isA<Color?>());
    });

    test('contentColorBuilder hover status', () {
      final style = MyoroButtonStyle.fake();
      final result = style.contentColorBuilder(MyoroTapStatusEnum.hover);
      expect(result, isA<Color?>());
    });

    test('contentColorBuilder tap status', () {
      final style = MyoroButtonStyle.fake();
      final result = style.contentColorBuilder(MyoroTapStatusEnum.tap);
      expect(result, isA<Color?>());
    });

    test('borderBuilder function', () {
      final style = MyoroButtonStyle.fake();
      final result = style.borderBuilder(MyoroTapStatusEnum.idle);
      expect(result, isA<Border?>());
    });

    test('borderBuilder hover status', () {
      final style = MyoroButtonStyle.fake();
      final result = style.borderBuilder(MyoroTapStatusEnum.hover);
      expect(result, isA<Border?>());
    });

    test('borderBuilder tap status', () {
      final style = MyoroButtonStyle.fake();
      final result = style.borderBuilder(MyoroTapStatusEnum.tap);
      expect(result, isA<Border?>());
    });

    test('borderBuilder returns null when borderWidth is null', () {
      const style = MyoroButtonStyle(borderWidth: null);
      final result = style.borderBuilder(MyoroTapStatusEnum.idle);
      expect(result, isNull);
    });
  });
}
