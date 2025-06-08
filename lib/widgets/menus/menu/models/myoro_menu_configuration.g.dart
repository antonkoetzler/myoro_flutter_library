// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroMenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMenuConfiguration<T> with _$MyoroMenuConfigurationMixin<T> {}
/// ```
mixin _$MyoroMenuConfigurationMixin<T> {
  MyoroMenuConfiguration<T> get self => this as MyoroMenuConfiguration<T>;

  MyoroMenuConfiguration<T> copyWith({
    BoxConstraints? constraints,
    FutureOr<Set<T>> Function()? request,
    FutureOr<Set<T>> Function(Set<T>)? onEndReachedRequest,
    bool onEndReachedRequestProvided = true,
    Set<T> Function(String, Set<T>)? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItem Function(T)? itemBuilder,
  }) {
    return MyoroMenuConfiguration(
      constraints: constraints ?? self.constraints,
      request: request ?? self.request,
      onEndReachedRequest:
          onEndReachedRequestProvided
              ? (onEndReachedRequest ?? self.onEndReachedRequest)
              : null,
      searchCallback:
          searchCallbackProvided
              ? (searchCallback ?? self.searchCallback)
              : null,
      itemBuilder: itemBuilder ?? self.itemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.constraints == self.constraints &&
        other.request == self.request &&
        other.onEndReachedRequest == self.onEndReachedRequest &&
        other.searchCallback == self.searchCallback &&
        other.itemBuilder == self.itemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.constraints,
      self.request,
      self.onEndReachedRequest,
      self.searchCallback,
      self.itemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroMenuConfiguration<T>(\n'
      '  constraints: ${self.constraints},\n'
      '  request: ${self.request},\n'
      '  onEndReachedRequest: ${self.onEndReachedRequest},\n'
      '  searchCallback: ${self.searchCallback},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}
