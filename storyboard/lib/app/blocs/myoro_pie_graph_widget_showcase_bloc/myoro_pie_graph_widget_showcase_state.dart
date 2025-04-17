part of 'myoro_pie_graph_widget_showcase_bloc.dart';

final class MyoroPieGraphWidgetShowcaseState extends Equatable {
  /// [MyoroPieGraph.typeEnum].
  final MyoroPieGraphEnum typeEnum;

  /// [MyoroPieGraph.centerWidget].
  final bool centerWidgetEnabled;

  const MyoroPieGraphWidgetShowcaseState({
    this.typeEnum = MyoroPieGraphEnum.pie,
    this.centerWidgetEnabled = false,
  });

  MyoroPieGraphWidgetShowcaseState copyWith({
    MyoroPieGraphEnum? typeEnum,
    bool? centerWidgetEnabled,
  }) {
    return MyoroPieGraphWidgetShowcaseState(
      typeEnum: typeEnum ?? this.typeEnum,
      centerWidgetEnabled: centerWidgetEnabled ?? this.centerWidgetEnabled,
    );
  }

  @override
  String toString() =>
      'MyoroPieGraphWidgetShowcaseState(\n'
      '  typeEnum: $typeEnum,\n'
      '  centerWidgetEnabled: $centerWidgetEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [typeEnum, centerWidgetEnabled];
  }
}
