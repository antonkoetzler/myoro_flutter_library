part of 'myoro_tooltip_widget_showcase_bloc.dart';

final class MyoroTooltipWidgetShowcaseState extends Equatable {
  /// [MyoroTooltip.margin].
  final double margin;

  /// [MyoroTooltip.text].
  final String text;

  const MyoroTooltipWidgetShowcaseState({this.margin = 0, this.text = ''});

  MyoroTooltipWidgetShowcaseState copyWith({double? margin, String? text}) {
    return MyoroTooltipWidgetShowcaseState(
      margin: margin ?? this.margin,
      text: text ?? this.text,
    );
  }

  @override
  String toString() => ''
      'MyoroTooltipWidgetShowcaseState(\n'
      '  margin: $margin,\n'
      '  text: $text,\n'
      ');';

  @override
  List<Object?> get props {
    return [margin, text];
  }
}
