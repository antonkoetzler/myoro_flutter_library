import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Extension for [BuildContext].
extension MyoroBuildContextExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  TextTheme get textTheme => Theme.of(this).textTheme;
  OverlayState get overlay => Overlay.of(this);

  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    final themeExtension = Theme.of(this).extension<T>();
    if (themeExtension != null) return themeExtension;
    throw Exception('[BuildContextExtension.resolveThemeExtension]: [ThemeExtension] does not exist.');
  }

  T resolveBloc<T extends BlocBase>() {
    try {
      final bloc = BlocProvider.of<T>(this);
      return bloc;
    } catch (_) {
      throw Exception('[BuildContextExtension.resolveBloc]: [Bloc] does not exist.');
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
}
