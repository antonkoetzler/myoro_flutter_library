import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroIconConfiguration', () {
    test('constructor assigns fields correctly', () {
      final icon = myoroFake<IconData>();
      const size = 24.0;

      final configuration = MyoroIconConfiguration(icon: icon, size: size);

      expect(configuration.icon, icon);
      expect(configuration.size, size);
    });

    test('fake constructor returns valid instance', () {
      final configuration = MyoroIconConfiguration.fake();

      expect(configuration.icon, isA<IconData>());
      expect(configuration.size == null || configuration.size is double, true);
    });

    test('lerp returns null if icon is null after interpolation', () {
      final result = MyoroIconConfiguration.lerp(null, null, 0.5);
      expect(result, null);
    });

    test('lerp interpolates correctly', () {
      const icon = Icons.access_alarm;
      const icon2 = Icons.access_time;

      const configuration1 = MyoroIconConfiguration(icon: icon, size: 20);
      const configuration2 = MyoroIconConfiguration(icon: icon2, size: 40);

      final result = MyoroIconConfiguration.lerp(configuration1, configuration2, 0.5);

      expect(result, isNotNull);
      expect(result!.icon, icon2); // uses 'other' icon
      expect(result.size, closeTo(30, 0.001));
    });
  });
}
