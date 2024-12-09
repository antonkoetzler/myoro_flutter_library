part of 'myoro_menu_widget_showcase_bloc.dart';

final class MyoroMenuWidgetShowcaseState extends Equatable {
  /// [MyoroMenu.iconSize].
  final double? iconSize;

  /// Items being built in the [MyoroMenu].
  final int itemCount;

  const MyoroMenuWidgetShowcaseState({
    this.iconSize,
    this.itemCount = 0,
  });

  MyoroMenuWidgetShowcaseState copyWith({
    double? iconSize,
    int? itemCount,
  }) {
    return MyoroMenuWidgetShowcaseState(
      iconSize: iconSize,
      itemCount: itemCount ?? this.itemCount,
    );
  }

  @override
  String toString() => ''
      'MyoroMenuWidgetShowcaseState(\n'
      '  iconSize: $iconSize,\n'
      '  itemCount: $itemCount,\n'
      ');';

  @override
  List<Object?> get props => [iconSize, itemCount];
}
