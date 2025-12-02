import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/src/exports.dart';
import 'package:provider/provider.dart';

/// Extension for [BuildContext].
extension MyoroBuildContextExtension on BuildContext {
  /// Returns the MFL localization.
  AppLocalizations get mflLocalization => AppLocalizations.of(this)!;

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

  /// Resolves a [ThemeExtension] and throws a [StateError]
  /// if the [ThemeExtension] isn't apart of the [BuildContext].
  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    final themeExtension = Theme.of(this).extension<T>();
    if (themeExtension != null) return themeExtension;
    throw StateError(
      '[MyoroBuildContextExtension.resolveThemeExtension]: [ThemeExtension] of type [$T] is not registered in the theme.'
      'Make sure the [ThemeExtension] is included in the theme extensions list when creating the [ThemeData].',
    );
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
  void showSnackBar({
    Duration duration = MyoroSnackBarContainer.durationDefaultValue,
    required MyoroSnackBar snackBar,
  }) {
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
  void closeSnackBar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }
}
