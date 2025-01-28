part of 'myoro_scrollable_widget_showcase_bloc.dart';

final class MyoroScrollableWidgetShowcaseState extends Equatable {
  /// [MyoroScrollable.scrollableType].
  final MyoroScrollableEnum scrollableType;

  /// [MyoroScrollable.direction].
  final Axis direction;

  /// [MyoroScrollable.padding].
  final double padding;

  /// [MyoroScrollable.constraints].
  final BoxConstraints? constraints;

  const MyoroScrollableWidgetShowcaseState({
    this.scrollableType = MyoroScrollableEnum.singleChildScrollView,
    this.direction = Axis.vertical,
    this.padding = 0,
    this.constraints,
  });

  MyoroScrollableWidgetShowcaseState copyWith({
    MyoroScrollableEnum? scrollableType,
    Axis? direction,
    double? padding,
    BoxConstraints? constraints,
    bool constraintsEnabled = true,
  }) {
    return MyoroScrollableWidgetShowcaseState(
      scrollableType: scrollableType ?? this.scrollableType,
      direction: direction ?? this.direction,
      padding: padding ?? this.padding,
      constraints: constraintsEnabled ? (constraints ?? this.constraints) : null,
    );
  }

  @override
  String toString() => ''
      'MyoroScrollableWidgetShowcaseState(\n'
      '  scrollableType: $scrollableType,\n'
      '  direction: $direction,\n'
      '  padding: $padding,\n'
      '  constraints: $constraints,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      scrollableType,
      direction,
      padding,
      constraints,
    ];
  }
}
