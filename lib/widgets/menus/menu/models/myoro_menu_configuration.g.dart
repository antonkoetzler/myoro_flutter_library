// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroMenuConfigurationExtension<T> on MyoroMenuConfiguration<T> {
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
      constraints: constraints ?? this.constraints,
      request: request ?? this.request,
      onEndReachedRequest:
          onEndReachedRequestProvided
              ? (onEndReachedRequest ?? this.onEndReachedRequest)
              : null,
      searchCallback:
          searchCallbackProvided
              ? (searchCallback ?? this.searchCallback)
              : null,
      itemBuilder: itemBuilder ?? this.itemBuilder,
    );
  }
}

/// Apply this mixin to [MyoroMenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMenuConfiguration<T> with $MyoroMenuConfigurationMixin<T> {}
/// ```
mixin $MyoroMenuConfigurationMixin<T> {
  MyoroMenuConfiguration<T> get self => this as MyoroMenuConfiguration<T>;

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
