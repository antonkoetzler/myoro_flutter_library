part of 'myoro_scrollable_widget_showcase_bloc.dart';

final class MyoroScrollableWidgetShowcaseState extends Equatable {
  /// [MyoroScrollable.scrollableType].
  final MyoroScrollableEnum scrollableType;

  /// [MyoroScrollable.direction].
  final Axis direction;

  /// [MyoroScrollable.padding].
  final double padding;

  const MyoroScrollableWidgetShowcaseState({
    this.scrollableType = MyoroScrollableEnum.singleChildScrollView,
    this.direction = Axis.vertical,
    this.padding = 0,
  });

  MyoroScrollableWidgetShowcaseState copyWith({
    MyoroScrollableEnum? scrollableType,
    Axis? direction,
    double? padding,
  }) {
    return MyoroScrollableWidgetShowcaseState(
      scrollableType: scrollableType ?? this.scrollableType,
      direction: direction ?? this.direction,
      padding: padding ?? this.padding,
    );
  }

  @override
  String toString() => ''
      'MyoroScrollableWidgetShowcaseState(\n'
      '  scrollableType: $scrollableType,\n'
      '  direction: $direction,\n'
      '  padding: $padding,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      scrollableType,
      direction,
      padding,
    ];
  }
}
