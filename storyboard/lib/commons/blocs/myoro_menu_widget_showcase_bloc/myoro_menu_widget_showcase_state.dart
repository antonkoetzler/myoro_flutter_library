part of 'myoro_menu_widget_showcase_bloc.dart';

final class MyoroMenuWidgetShowcaseState extends Equatable {
  /// Max height constraint of the [MyoroMenu].
  final double? maxHeight;

  /// Items being built in the [MyoroMenu].
  final int itemCount;

  const MyoroMenuWidgetShowcaseState({
    this.maxHeight,
    this.itemCount = 0,
  });

  MyoroMenuWidgetShowcaseState copyWith({
    double? maxHeight,
    int? itemCount,
  }) {
    return MyoroMenuWidgetShowcaseState(
      maxHeight: maxHeight ?? this.maxHeight,
      itemCount: itemCount ?? this.itemCount,
    );
  }

  @override
  String toString() => ''
      'MyoroMenuWidgetShowcaseState(\n'
      '  maxHeight: $maxHeight,\n'
      '  itemCount: $itemCount,\n'
      ');';

  @override
  List<Object?> get props => [maxHeight, itemCount];
}
