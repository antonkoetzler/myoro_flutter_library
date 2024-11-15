import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
}
