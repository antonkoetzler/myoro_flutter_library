// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroSearchInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputConfiguration<T> with _$MyoroSearchInputConfigurationMixin<T> {}
/// ```
mixin _$MyoroSearchInputConfigurationMixin<T> {
  MyoroSearchInputConfiguration<T> get self =>
      this as MyoroSearchInputConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.inputConfiguration == self.inputConfiguration &&
        other.requestWhenChanged == self.requestWhenChanged &&
        other.request == self.request &&
        other.itemBuilder == self.itemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.inputConfiguration,
      self.requestWhenChanged,
      self.request,
      self.itemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroSearchInputConfiguration<T>(\n'
      '  inputConfiguration: ${self.inputConfiguration},\n'
      '  requestWhenChanged: ${self.requestWhenChanged},\n'
      '  request: ${self.request},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroSearchInputConfigurationExtension<T>
    on MyoroSearchInputConfiguration<T> {
  MyoroSearchInputConfiguration<T> copyWith({
    MyoroInputConfiguration? inputConfiguration,
    bool? requestWhenChanged,
    FutureOr<Set<T>> Function(String)? request,
    MyoroMenuItem Function(T)? itemBuilder,
  }) {
    return MyoroSearchInputConfiguration(
      inputConfiguration: inputConfiguration ?? self.inputConfiguration,
      requestWhenChanged: requestWhenChanged ?? self.requestWhenChanged,
      request: request ?? self.request,
      itemBuilder: itemBuilder ?? self.itemBuilder,
    );
  }
}
