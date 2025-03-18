part of 'myoro_material_app_widget_showcase_bloc.dart';

final class MyoroMaterialAppWidgetShowcaseState extends Equatable {
  /// [MyoroMaterialApp.themeMode].
  final ThemeMode themeMode;

  const MyoroMaterialAppWidgetShowcaseState({this.themeMode = ThemeMode.dark});

  MyoroMaterialAppWidgetShowcaseState copyWith({ThemeMode? themeMode}) {
    return MyoroMaterialAppWidgetShowcaseState(
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroMaterialAppWidgetShowcaseState(\n'
      '  themeMode: $themeMode,\n'
      ');';

  @override
  List<Object?> get props {
    return [themeMode];
  }
}
