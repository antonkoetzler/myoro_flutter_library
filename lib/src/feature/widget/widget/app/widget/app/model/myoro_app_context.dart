import 'package:flutter/material.dart';

/// App-level [BuildContext] provided by [MyoroApp] to avoid theme extension collisions.
///
/// This context represents the root context from [MyoroApp] and should be used
/// when resolving theme extensions to prevent collisions that can occur when
/// widgets are nested within other widgets that might have their own theme extension scopes.
class MyoroAppContext {
  const MyoroAppContext(this._context);

  final BuildContext _context;

  /// Resolves a theme extension from the app context to avoid collisions.
  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    return Theme.of(_context).extension<T>()!;
  }
}
