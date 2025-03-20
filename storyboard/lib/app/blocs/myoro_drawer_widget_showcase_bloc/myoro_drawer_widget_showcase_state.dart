part of 'myoro_drawer_widget_showcase_bloc.dart';

final class MyoroDrawerWidgetShowcaseState extends Equatable {
  /// [MyoroDrawer.title].
  final String? title;

  /// [MyoroDrawer.titleTextStyle].
  final TextStyle? titleTextStyle;

  /// [MyoroDrawer.showCloseButton].
  final bool showCloseButton;

  /// [MyoroDrawer.barrierDismissable].
  final bool barrierDismissable;

  const MyoroDrawerWidgetShowcaseState({
    this.title,
    this.titleTextStyle,
    this.showCloseButton = true,
    this.barrierDismissable = true,
  });

  MyoroDrawerWidgetShowcaseState copyWith({
    String? title,
    bool titleEnabled = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleEnabled = true,
    bool? showCloseButton,
    bool? barrierDismissable,
  }) {
    return MyoroDrawerWidgetShowcaseState(
      title: titleEnabled ? (title ?? this.title) : null,
      titleTextStyle: titleTextStyleEnabled
          ? (titleTextStyle ?? this.titleTextStyle)
          : null,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
    );
  }

  @override
  String toString() => ''
      'MyoroDrawerWidgetShowcaseState(\n'
      '  title: $title,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  showCloseButton: $showCloseButton,\n'
      '  barrierDismissable: $barrierDismissable,\n'
      ');';

  @override
  List<Object?> get props {
    return [title, titleTextStyle, showCloseButton, barrierDismissable];
  }
}
