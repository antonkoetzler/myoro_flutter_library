part of 'myoro_table_widget_showcase_bloc.dart';

final class MyoroTableWidgetShowcaseState extends Equatable {
  /// [MyoroTableConfiguration.showPaginationControls]
  final bool showPaginationControls;

  const MyoroTableWidgetShowcaseState({
    this.showPaginationControls = MyoroTableConfiguration.showPaginationControlsDefaultValue,
  });

  MyoroTableWidgetShowcaseState copyWith({bool? showPaginationControls}) {
    return MyoroTableWidgetShowcaseState(
      showPaginationControls: showPaginationControls ?? this.showPaginationControls,
    );
  }

  @override
  List<Object?> get props {
    return [showPaginationControls];
  }

  @override
  String toString() =>
      'MyoroTableWidgetShowcaseState(\n'
      '  showPaginationControls: $showPaginationControls,\n'
      ');';
}
