import 'package:equatable/equatable.dart';

/// Request if the [MyoroDataConfiguration.asyncronousItems] is being utilized.
typedef MyoroDataConfigurationRequest<T> = Future<List<T>> Function();

/// A generic model used for [Widget]s that accepts both static and asyncronous items.
final class MyoroDataConfiguration<T> extends Equatable {
  /// Static items.
  final List<T>? staticItems;

  /// Request to be made to get the items.
  final MyoroDataConfigurationRequest<T>? asyncronousItems;

  const MyoroDataConfiguration({
    this.staticItems,
    this.asyncronousItems,
  }) : assert(
          (staticItems != null) ^ (asyncronousItems != null),
          '[MyoroDataConfiguration]: [staticItems] (x)or [asyncronousItems] needs to be requests.',
        );

  MyoroDataConfiguration<T> copyWith({
    List<T>? staticItems,
    MyoroDataConfigurationRequest<T>? asyncronousItems,
  }) {
    return MyoroDataConfiguration(
      staticItems: staticItems ?? this.staticItems,
      asyncronousItems: asyncronousItems ?? this.asyncronousItems,
    );
  }

  @override
  String toString() => ''
      'MyoroDataConfiguration<$T>(\n'
      '  staticItems: $staticItems,\n'
      '  asyncronousItems: $asyncronousItems,\n'
      ');';

  @override
  List<Object?> get props => [staticItems, asyncronousItems];

  bool get staticItemsUsed => staticItems != null;
  bool get asynronousItemsUsed => asyncronousItems != null;
}
