// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchInputMenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputMenuConfiguration<T> with _$MyoroSearchInputMenuConfigurationMixin<T> {}
/// ```
mixin _$MyoroSearchInputMenuConfigurationMixin<T> {
  MyoroSearchInputMenuConfiguration<T> get self => this as MyoroSearchInputMenuConfiguration<T>;

  MyoroSearchInputMenuConfiguration<T> copyWith({
    MyoroSearchInputRequest<T>? request,
    MyoroSearchInputOnEndReachedRequest<T>? onEndReachedRequest,
    bool onEndReachedRequestProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
  }) {
    return MyoroSearchInputMenuConfiguration(
      request: request ?? self.request,
      onEndReachedRequest: onEndReachedRequestProvided ? (onEndReachedRequest ?? self.onEndReachedRequest) : null,
      itemBuilder: itemBuilder ?? self.itemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputMenuConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.request == self.request &&
        other.onEndReachedRequest == self.onEndReachedRequest &&
        other.itemBuilder == self.itemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(self.request, self.onEndReachedRequest, self.itemBuilder);
  }

  @override
  String toString() =>
      'MyoroSearchInputMenuConfiguration<T>(\n'
      '  request: ${self.request},\n'
      '  onEndReachedRequest: ${self.onEndReachedRequest},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}
