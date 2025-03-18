import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Extension for [BuildContext].
extension MyoroBuildContextExtension on BuildContext {
  ThemeData get themeData => Theme.of(this);
  bool get isDarkMode => themeData.brightness == Brightness.dark;
  TextTheme get textTheme => themeData.textTheme;
  OverlayState get overlay => Overlay.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    final themeExtension = Theme.of(this).extension<T>();
    if (themeExtension != null) return themeExtension;
    throw Exception(
        '[BuildContextExtension.resolveThemeExtension]: [ThemeExtension] does not exist.');
  }

  T resolveBloc<T extends BlocBase>() {
    try {
      final bloc = BlocProvider.of<T>(this);
      return bloc;
    } catch (_) {
      throw Exception(
          '[BuildContextExtension.resolveBloc]: [Bloc] does not exist.');
    }
  }

  /// Opens the drawer of the [BuildContext]'s [MyoroScreen].
  void openDrawer({
    bool isEndDrawer = false,
    required MyoroDrawer drawer,
  }) {
    read<MyoroDrawerController>().openDrawer(
      this,
      isEndDrawer: isEndDrawer,
      drawer: drawer,
    );
  }

  /// Closes the drawer of the [BuildContext]'s [MyoroScreen].
  void closeDrawer() => read<MyoroDrawerController>().closeDrawer(this);

  /// Opens a snack bar.
  void showSnackBar({
    Duration? duration,
    required MyoroSnackBar snackBar,
  }) {
    MyoroSnackBarHelper.showSnackBar(
      this,
      duration: duration,
      snackBar: snackBar,
    );
  }

  /// Hides a snack bar.
  void hideSnackBar() => MyoroSnackBarHelper.hideSnackBar(this);
}
