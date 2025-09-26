import 'package:faker/faker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroMenuItem assertion case', () {
    expect(
      () => MyoroMenuItem(buttonBuilder: (_, _) => const SizedBox.shrink(), iconTextButtonConfiguration: MyoroIconTextButtonConfiguration.fake()),
      throwsAssertionError,
    );
    expect(
      () => MyoroMenuItem(
        buttonConfiguration: MyoroButtonConfiguration.fake(),
        buttonBuilder: (_, _) => const SizedBox.shrink(),
        iconTextButtonConfiguration: MyoroIconTextButtonConfiguration.fake(),
      ),
      throwsAssertionError,
    );
  });

  test('MyoroMenuItem onTapUp from buttonConfiguration', () {
    var onTapUpCalled = false;
    final item = MyoroMenuItem(
      buttonConfiguration: MyoroButtonConfiguration(onTapUp: (details) => onTapUpCalled = true),
      buttonBuilder: (context, item) => const SizedBox.shrink(),
    );

    item.onTapUp?.call(TapUpDetails(kind: PointerDeviceKind.touch, localPosition: Offset.zero));
    expect(onTapUpCalled, isTrue);
  });

  test('MyoroMenuItem onTapUp from iconTextButtonConfiguration', () {
    var onTapUpCalled = false;
    final item = MyoroMenuItem(
      iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
        onTapUp: (details) => onTapUpCalled = true,
        iconConfiguration: MyoroIconConfiguration(icon: Icons.add),
      ),
    );

    item.onTapUp?.call(TapUpDetails(kind: PointerDeviceKind.touch, localPosition: Offset.zero));
    expect(onTapUpCalled, isTrue);
  });

  test('MyoroMenuItem onTapUp returns null when both configurations are null', () {
    final item = MyoroMenuItem(buttonBuilder: (context, item) => const SizedBox.shrink());
    expect(item.onTapUp, isNull);
  });
}
