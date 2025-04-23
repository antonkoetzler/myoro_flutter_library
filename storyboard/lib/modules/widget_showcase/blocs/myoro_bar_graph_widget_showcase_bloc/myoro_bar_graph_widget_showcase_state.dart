part of 'myoro_bar_graph_widget_showcase_bloc.dart';

final class MyoroBarGraphWidgetShowcaseState extends Equatable {
  /// [MyoroBarGraph.sorted].
  final bool sorted;

  const MyoroBarGraphWidgetShowcaseState({this.sorted = true});

  MyoroBarGraphWidgetShowcaseState copyWith({bool? sorted}) {
    return MyoroBarGraphWidgetShowcaseState(sorted: sorted ?? this.sorted);
  }

  @override
  String toString() =>
      'MyoroBarGraphWidgetShowcaseState(\n'
      '  sorted: $sorted,\n'
      ');';

  @override
  List<Object?> get props => [sorted];
}
