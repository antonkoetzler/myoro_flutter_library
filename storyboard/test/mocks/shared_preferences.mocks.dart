import 'package:faker/faker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Mock of [SharedPreference].
final class MockSharedPreferences extends Mock implements SharedPreferences {
  @override
  bool? getBool(String key) => faker.randomGenerator.boolean();

  @override
  Future<bool> setBool(String key, bool value) async =>
      faker.randomGenerator.boolean();
}
