part of 'myoro_search_input_widget_showcase_bloc.dart';

final class MyoroSearchInputWidgetShowcaseState extends Equatable {
  /// [MyoroSearchInput.requestWhenChanged].
  final bool requestWhenChanged;

  const MyoroSearchInputWidgetShowcaseState({this.requestWhenChanged = false});

  MyoroSearchInputWidgetShowcaseState copyWith({bool? requestWhenChanged}) {
    return MyoroSearchInputWidgetShowcaseState(
      requestWhenChanged: requestWhenChanged ?? this.requestWhenChanged,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroSearchInputWidgetShowcaseState(\n'
      '  requestWhenChanged: $requestWhenChanged,\n'
      ');';

  @override
  List<Object?> get props => [requestWhenChanged];
}
