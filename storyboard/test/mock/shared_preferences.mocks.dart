import 'package:faker/faker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {
  static MockSharedPreferences preConfigured({bool? setBool}) {
    final mock = MockSharedPreferences();
    when(() => mock.setBool(any(), any())).thenAnswer((_) async => setBool ?? faker.randomGenerator.boolean());
    return mock;
  }
}
