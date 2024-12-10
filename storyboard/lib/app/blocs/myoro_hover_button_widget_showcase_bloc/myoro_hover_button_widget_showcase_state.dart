part of 'myoro_hover_button_widget_showcase_bloc.dart';

final class MyoroHoverButtonWidgetShowcaseState extends Equatable {
  final bool onPressedEnabled;

  const MyoroHoverButtonWidgetShowcaseState({
    this.onPressedEnabled = true,
  });

  MyoroHoverButtonWidgetShowcaseState copyWith({
    bool? onPressedEnabled,
  }) {
    return MyoroHoverButtonWidgetShowcaseState(
      onPressedEnabled: onPressedEnabled ?? this.onPressedEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroHoverButtonWidgetShowcaseState(\n'
      '  onPressedEnabled: $onPressedEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      onPressedEnabled,
    ];
  }
}
