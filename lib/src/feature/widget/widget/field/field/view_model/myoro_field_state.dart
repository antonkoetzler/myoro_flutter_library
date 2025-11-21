part of 'myoro_field_view_model.dart';

/// State of [MyoroFieldViewModel].
class MyoroFieldState {
  /// Creates a new instance of [MyoroFieldState].
  MyoroFieldState(this.label, this.labelConfiguration, this.data, this.dataConfiguration);

  /// [MyoroField.label].
  final String label;

  /// [MyoroField.labelConfiguration].
  final MyoroTextConfiguration? labelConfiguration;

  /// [MyoroField.data].
  final String data;

  /// [MyoroField.dataConfiguration].
  final MyoroTextConfiguration? dataConfiguration;
}
