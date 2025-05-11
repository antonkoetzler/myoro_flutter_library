part of 'myoro_app_widget_showcase_bloc.dart';

final class MyoroAppWidgetShowcaseState extends Equatable {
  /// [MyoroApp.themeMode].
  final ThemeMode themeMode;

  const MyoroAppWidgetShowcaseState({this.themeMode = ThemeMode.dark});

  MyoroAppWidgetShowcaseState copyWith({ThemeMode? themeMode}) {
    return MyoroAppWidgetShowcaseState(themeMode: themeMode ?? this.themeMode);
  }

  @override
  String toString() =>
      'MyoroAppWidgetShowcaseState(\n'
      '  themeMode: $themeMode,\n'
      ');';

  @override
  List<Object?> get props {
    return [themeMode];
  }
}
