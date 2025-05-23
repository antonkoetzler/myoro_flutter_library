import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Extension for [BuildContext].
extension MyoroBuildContextExtension on BuildContext {
  /// Returns if the application is using [ThemeMode.dark]
  /// (dark mode) or [ThemeMode.light] (light mode).
  bool get isDarkMode {
    return themeData.brightness == Brightness.dark;
  }

  /// [ThemeData] getter.
  ThemeData get themeData {
    return Theme.of(this);
  }

  /// [ColorScheme] getter.
  ColorScheme get colorScheme {
    return ColorScheme.of(this);
  }

  /// [TextTheme] getter.
  TextTheme get textTheme {
    return TextTheme.of(this);
  }

  /// [NavigatorState] getter.
  NavigatorState get navigator {
    return Navigator.of(this);
  }

  /// Getter for an [OverlayState] of an [Overlay]
  OverlayState get overlay {
    return Overlay.of(this);
  }

  /// Getter for a [MediaQueryData] of a [MediaQuery].
  MediaQueryData get mediaQuery {
    return MediaQuery.of(this);
  }

  /// Getter for all [ThemeExtension]s.
  Map<Object, ThemeExtension<dynamic>> get themeExtensions {
    return Theme.of(this).extensions;
  }

  /// Resolves a [ThemeExtension] and throws an [Exception]
  /// if the [ThemeExtension] isn't apart of the [BuildContext].
  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    final themeExtension = Theme.of(this).extension<T>();
    if (themeExtension != null) return themeExtension;
    throw Exception('[BuildContextExtension.resolveThemeExtension]: [ThemeExtension] does not exist.');
  }

  /// Resolvers a [Bloc] or [Cubit] and thorws an [Exception]
  /// if the [Bloc]/[Cubit] isn't apart of the [BuildContext].
  T resolveBloc<T extends BlocBase>() {
    try {
      final bloc = BlocProvider.of<T>(this);
      return bloc;
    } catch (_) {
      throw Exception('[BuildContextExtension.resolveBloc]: [Bloc] does not exist.');
    }
  }

  /// Opens the drawer of the [BuildContext]'s [MyoroScreen].
  void openDrawer({bool isEndDrawer = false, required MyoroDrawer drawer}) {
    read<MyoroDrawerController>().openDrawer(this, isEndDrawer: isEndDrawer, drawer: drawer);
  }

  /// Closes the drawer of the [BuildContext]'s [MyoroScreen].
  void closeDrawer() {
    read<MyoroDrawerController>().closeDrawer(this);
  }

  /// Opens a snack bar.
  void showSnackBar({Duration? duration, required MyoroSnackBar snackBar}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        MyoroSnackBarContainer(
          themeExtension: resolveThemeExtension<MyoroSnackBarContainerThemeExtension>(),
          duration: duration,
          snackBar: snackBar,
        ),
      );
  }

  /// Hides a snack bar.
  void hideSnackBar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }
}
