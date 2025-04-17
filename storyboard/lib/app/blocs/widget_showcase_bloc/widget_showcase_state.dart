part of 'widget_showcase_bloc.dart';

final class WidgetShowcaseState extends Equatable {
  /// If [WidgetShowcase] is being displayed.
  final bool displayingWidgetShowcase;

  /// If [_WidgetOptions] is being displayed.
  final bool displayingWidgetOptions;

  const WidgetShowcaseState({this.displayingWidgetShowcase = false, this.displayingWidgetOptions = true});

  WidgetShowcaseState copyWith({bool? displayingWidgetShowcase, bool? displayingWidgetOptions}) {
    return WidgetShowcaseState(
      displayingWidgetShowcase: displayingWidgetShowcase ?? this.displayingWidgetShowcase,
      displayingWidgetOptions: displayingWidgetOptions ?? this.displayingWidgetOptions,
    );
  }

  @override
  String toString() =>
      'WidgetShowcaseState(\n'
      '  displayingWidgetShowcase: $displayingWidgetShowcase,\n'
      '  displayingWidgetOptions: $displayingWidgetOptions,\n'
      ');';

  @override
  List<Object?> get props => [displayingWidgetShowcase, displayingWidgetOptions];
}
