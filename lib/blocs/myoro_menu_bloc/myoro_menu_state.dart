part of 'myoro_menu_bloc.dart';

final class MyoroMenuState<T> extends Equatable {
  /// Standard [MyoroRequestEnum] for a [Bloc] making requests.
  final MyoroRequestEnum status;

  /// Error message of the request if there are any.
  final String? errorMessage;

  /// Items of the [MyoroMenu].
  final Set<T> items;

  /// When [SearchEvent] is called with a non-empty [SearchEvent.query],
  /// [queriedItems] will not be null. When [SearchEvent] is called with
  /// an empty [SearchEvent.query], [queriedItems] will be null. When
  /// [queriedItems] is not null, it will be used as the [MyoroMenu]'s
  /// items being displayed. Otherwise, [items] will be displayed.
  final Set<T>? queriedItems;

  /// If the initial request was not made, [MyoroMenuConfiguration.request] is called.
  /// Otherwise, [MyoroMenuConfiguration.onEndReachedRequest] is called if it is not null.
  final bool initialRequestMade;

  const MyoroMenuState({
    this.status = MyoroRequestEnum.idle,
    this.errorMessage,
    this.items = const {},
    this.queriedItems,
    this.initialRequestMade = false,
  }) : assert(
         !(status == MyoroRequestEnum.error && errorMessage == null),
         '[MyoroMenuState<$T>]: [status] cannot be [MyoroRequestEnum.error] '
         'when [errorMessage] is not null',
       );

  MyoroMenuState<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    Set<T>? items,
    Set<T>? queriedItems,
    bool queriedItemsProvided = true,
    bool? initialRequestMade,
  }) {
    return MyoroMenuState(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      items: items ?? this.items,
      queriedItems: queriedItemsProvided ? (queriedItems ?? this.queriedItems) : null,
      initialRequestMade: initialRequestMade ?? this.initialRequestMade,
    );
  }

  @override
  List<Object?> get props {
    return [status, errorMessage, items, queriedItems, initialRequestMade];
  }

  @override
  String toString() =>
      'MyoroMenuState<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  items: $items,\n'
      '  queriedItems: $queriedItems,\n'
      '  initialRequestMade: $initialRequestMade,\n'
      ');';
}
