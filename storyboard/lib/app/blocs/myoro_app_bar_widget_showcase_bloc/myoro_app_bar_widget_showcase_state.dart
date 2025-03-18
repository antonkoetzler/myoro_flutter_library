part of 'myoro_app_bar_widget_showcase_bloc.dart';

final class MyoroAppBarWidgetShowcaseState extends Equatable {
  /// [MyoroAppBar.bordered].
  final bool bordered;

  const MyoroAppBarWidgetShowcaseState({this.bordered = true});

  MyoroAppBarWidgetShowcaseState copyWith({bool? bordered}) {
    return MyoroAppBarWidgetShowcaseState(bordered: bordered ?? this.bordered);
  }

  @override
  String toString() =>
      ''
      'MyoroAppBarWidgetShowcaseState(\n'
      '  bordered: $bordered,\n'
      ');';

  @override
  List<Object?> get props => [bordered];
}
