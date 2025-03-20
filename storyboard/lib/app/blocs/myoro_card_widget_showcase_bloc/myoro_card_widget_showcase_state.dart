part of 'myoro_card_widget_showcase_bloc.dart';

final class MyoroCardWidgetShowcaseState extends Equatable {
  /// [MyoroCard.title].
  final String title;

  /// [MyoroCard.titleTextStyle].
  final TextStyle? titleTextStyle;

  /// [MyoroCard.padding].
  final double? padding;

  /// [MyoroCard.width].
  final MyoroCardWidgetShowcaseBlocDimension width;

  /// [MyoroCard.height].
  final MyoroCardWidgetShowcaseBlocDimension height;

  const MyoroCardWidgetShowcaseState({
    this.title = '',
    this.titleTextStyle,
    this.padding,
    this.width = (false, 225),
    this.height = (false, 50),
  });

  MyoroCardWidgetShowcaseState copyWith({
    String? title,
    TextStyle? titleTextStyle,
    bool titleTextStyleEnabled = true,
    double? padding,
    MyoroCardWidgetShowcaseBlocDimension? width,
    MyoroCardWidgetShowcaseBlocDimension? height,
  }) {
    return MyoroCardWidgetShowcaseState(
      title: title ?? this.title,
      titleTextStyle:
          titleTextStyleEnabled
              ? (titleTextStyle ?? this.titleTextStyle)
              : null,
      padding: padding ?? this.padding,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroCardWidgetShowcaseState(\n'
      '  title: $title,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  padding: $padding,\n'
      '  width: $width,\n'
      '  height: $height,\n'
      ');';

  @override
  List<Object?> get props {
    return [title, titleTextStyle, padding, width, height];
  }
}
