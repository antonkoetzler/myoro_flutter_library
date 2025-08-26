import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroTextConfiguration', () {
    test('constructor assigns fields correctly', () {
      const configuration = MyoroTextConfiguration(
        text: 'Hello',
        maxLines: 2,
        overflow: TextOverflow.fade,
        alignment: TextAlign.left,
        style: TextStyle(fontSize: 20),
      );

      expect(configuration.text, 'Hello');
      expect(configuration.maxLines, 2);
      expect(configuration.overflow, TextOverflow.fade);
      expect(configuration.alignment, TextAlign.left);
      expect(configuration.style?.fontSize, 20);
    });

    test('throws if text is empty', () {
      expect(() => MyoroTextConfiguration(text: ''), throwsA(isA<AssertionError>()));
    });

    test('fake constructor returns valid instance', () {
      final configuration = MyoroTextConfiguration.fake();

      expect(configuration.text, isNotEmpty);
      expect(configuration.maxLines, greaterThan(0));
      expect(configuration.overflow, isA<TextOverflow>());
      expect(configuration.alignment, isA<TextAlign>());
    });

    test('lerp(null, null, t) throws due to null IntTween bounds', () {
      expect(() => MyoroTextConfiguration.lerp(null, null, 0.5), throwsA(isA<Error>()));
    });

    test('lerp interpolates correctly', () {
      const configuration1 = MyoroTextConfiguration(
        text: 'Start',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        alignment: TextAlign.left,
        style: TextStyle(fontSize: 10),
      );

      const configuration2 = MyoroTextConfiguration(
        text: 'End',
        maxLines: 3,
        overflow: TextOverflow.fade,
        alignment: TextAlign.right,
        style: TextStyle(fontSize: 20),
      );

      final result = MyoroTextConfiguration.lerp(configuration1, configuration2, 0.5);

      expect(result, isNotNull);
      expect(result!.text, 'End');
      expect(result.maxLines, 2);
      expect(result.overflow, TextOverflow.fade);
      expect(result.alignment, TextAlign.right);
      expect(result.style?.fontSize, closeTo(15, 0.001));
    });

    test('MyoroTextConfiguration.copyWith', () {
      var firstConfiguration = MyoroTextConfiguration.fake();
      expect(firstConfiguration.copyWith(), firstConfiguration);
      final secondConfiguration = MyoroTextConfiguration.fake();
      firstConfiguration = firstConfiguration.copyWith(
        text: secondConfiguration.text,
        maxLines: secondConfiguration.maxLines,
        overflow: secondConfiguration.overflow,
        alignment: secondConfiguration.alignment,
        style: secondConfiguration.style,
        styleProvided: secondConfiguration.style != null,
      );
      expect(firstConfiguration, secondConfiguration);
    });
  });
}
