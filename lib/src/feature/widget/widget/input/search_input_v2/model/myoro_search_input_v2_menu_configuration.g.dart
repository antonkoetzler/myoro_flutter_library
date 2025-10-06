// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_v2_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchInputV2MenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputV2MenuConfiguration<T> with _$MyoroSearchInputV2MenuConfigurationMixin<T> {}
/// ```
mixin _$MyoroSearchInputV2MenuConfigurationMixin<T> {
  MyoroSearchInputV2MenuConfiguration<T> get self => this as MyoroSearchInputV2MenuConfiguration<T>;

  MyoroSearchInputV2MenuConfiguration<T> copyWith({
    MyoroSearchInputV2Request<T>? request,
    MyoroSearchInputV2OnEndReachedRequest<T>? onEndReachedRequest,
    bool onEndReachedRequestProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
  }) {
    return MyoroSearchInputV2MenuConfiguration(
      request: request ?? self.request,
      onEndReachedRequest: onEndReachedRequestProvided ? (onEndReachedRequest ?? self.onEndReachedRequest) : null,
      itemBuilder: itemBuilder ?? self.itemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputV2MenuConfiguration<T> &&
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
      'MyoroSearchInputV2MenuConfiguration<T>(\n'
      '  request: ${self.request},\n'
      '  onEndReachedRequest: ${self.onEndReachedRequest},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}
