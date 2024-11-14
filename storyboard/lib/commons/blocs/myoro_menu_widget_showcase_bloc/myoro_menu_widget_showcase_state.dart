part of 'myoro_menu_widget_showcase_bloc.dart';

final class MyoroMenuWidgetShowcaseState extends Equatable {
  /// Items being built in the [MyoroMenu].
  final int itemCount;

  const MyoroMenuWidgetShowcaseState({
    this.itemCount = 0,
  });

  MyoroMenuWidgetShowcaseState copyWith({
    int? itemCount,
  }) {
    return MyoroMenuWidgetShowcaseState(
      itemCount: itemCount ?? this.itemCount,
    );
  }

  @override
  String toString() => ''
      'MyoroMenuWidgetShowcaseState(\n'
      '  itemCount: $itemCount,\n'
      ');';

  @override
  List<Object?> get props => [itemCount];
}
