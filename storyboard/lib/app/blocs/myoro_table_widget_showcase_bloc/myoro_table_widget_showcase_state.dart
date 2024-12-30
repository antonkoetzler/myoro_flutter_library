part of 'myoro_table_widget_showcase_bloc.dart';

final class MyoroTableWidgetShowcaseState extends Equatable {
  /// [MyoroTable.enableCheckboxes].
  final bool enableCheckboxes;

  /// [MyoroTable.showPaginationControls].
  final bool showPaginationControls;

  const MyoroTableWidgetShowcaseState({
    this.enableCheckboxes = false,
    this.showPaginationControls = false,
  });

  MyoroTableWidgetShowcaseState copyWith({
    bool? enableCheckboxes,
    bool? showPaginationControls,
  }) {
    return MyoroTableWidgetShowcaseState(
      enableCheckboxes: enableCheckboxes ?? this.enableCheckboxes,
      showPaginationControls: showPaginationControls ?? this.showPaginationControls,
    );
  }

  @override
  String toString() => ''
      'MyoroTableWidgetShowcaseState(\n'
      '  enableCheckboxes: $enableCheckboxes,\n'
      '  showPaginationControls: $showPaginationControls,\n'
      ');';

  @override
  List<Object?> get props => [enableCheckboxes, showPaginationControls];
}
