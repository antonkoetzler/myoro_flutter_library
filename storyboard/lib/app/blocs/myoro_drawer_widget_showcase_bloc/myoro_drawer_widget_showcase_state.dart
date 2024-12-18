part of 'myoro_drawer_widget_showcase_bloc.dart';

final class MyoroDrawerWidgetShowcaseState extends Equatable {
  /// [MyoroDrawer.title].
  final String? title;

  /// If [MyoroDrawer.title] is enabled.
  final bool titleEnabled;

  /// [MyoroDrawer.titleTextStyle].
  final TextStyle? titleTextStyle;

  /// If [MyoroDrawer.titleTextStyle] is enabled.
  final bool titleTextStyleEnabled;

  /// [MyoroDrawer.showCloseButton].
  final bool showCloseButton;

  /// [MyoroDrawer.barrierDismissable].
  final bool barrierDismissable;

  const MyoroDrawerWidgetShowcaseState({
    this.title,
    this.titleEnabled = false,
    this.titleTextStyle,
    this.titleTextStyleEnabled = false,
    this.showCloseButton = true,
    this.barrierDismissable = true,
  });

  MyoroDrawerWidgetShowcaseState copyWith({
    String? title,
    bool? titleEnabled,
    TextStyle? titleTextStyle,
    bool? titleTextStyleEnabled,
    bool? showCloseButton,
    bool? barrierDismissable,
  }) {
    titleEnabled = titleEnabled ?? this.titleEnabled;
    titleTextStyleEnabled = titleTextStyleEnabled ?? this.titleTextStyleEnabled;

    return MyoroDrawerWidgetShowcaseState(
      title: titleEnabled ? (title ?? this.title) : null,
      titleEnabled: titleEnabled,
      titleTextStyle: titleTextStyleEnabled ? (titleTextStyle ?? this.titleTextStyle) : null,
      titleTextStyleEnabled: titleTextStyleEnabled,
      showCloseButton: showCloseButton ?? this.showCloseButton,
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
    );
  }

  @override
  String toString() => ''
      'MyoroDrawerWidgetShowcaseState(\n'
      '  title: $title,\n'
      '  titleEnabled: $titleEnabled,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  titleTextStyleEnabled: $titleTextStyleEnabled,\n'
      '  showCloseButton: $showCloseButton,\n'
      '  barrierDismissable: $barrierDismissable,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      title,
      titleEnabled,
      titleTextStyle,
      titleTextStyleEnabled,
      showCloseButton,
      barrierDismissable,
    ];
  }
}