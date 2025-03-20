part of 'myoro_table_widget_showcase_bloc.dart';

final class MyoroTableWidgetShowcaseState extends Equatable {
  /// [MyoroTable.enableColumnResizing].
  final bool enableColumnResizing;

  /// [MyoroTable.enableCheckboxes].
  final bool enableCheckboxes;

  /// [MyoroTable.showPaginationControls].
  final bool showPaginationControls;

  const MyoroTableWidgetShowcaseState({
    this.enableColumnResizing = false,
    this.enableCheckboxes = false,
    this.showPaginationControls = false,
  });

  MyoroTableWidgetShowcaseState copyWith({
    bool? enableColumnResizing,
    bool? enableCheckboxes,
    bool? showPaginationControls,
  }) {
    return MyoroTableWidgetShowcaseState(
      enableColumnResizing: enableColumnResizing ?? this.enableColumnResizing,
      enableCheckboxes: enableCheckboxes ?? this.enableCheckboxes,
      showPaginationControls:
          showPaginationControls ?? this.showPaginationControls,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroTableWidgetShowcaseState(\n'
      '  enableColumnResizing: $enableColumnResizing,\n'
      '  enableCheckboxes: $enableCheckboxes,\n'
      '  showPaginationControls: $showPaginationControls,\n'
      ');';

  @override
  List<Object?> get props {
    return [enableColumnResizing, enableCheckboxes, showPaginationControls];
  }
}
