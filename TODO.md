# TODO

1. feature: Bottom sheets
1. improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- Open modal instead of compsitioned layer thing with `MyoroDropdown`
- Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`
  - Do the same thing with `MyoroSearchInput`
- Make `MyoroSnackBar` width 100% on every platform (#FlutterMoment)

1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. improvement: Add view model of a `Widget` to provider scope to not have to pass by argument
1. chore: Base view model logic structure on `MyoroFormWidgetShowcase` (**DONT ADD TO CHANGELOG**) 
1. improvement: Remove stylistic arguments from configuration models and force `ThemeExtension` overriding
1. chore: Add `ThemeExtension`s to all widget showcases
1. chore: Constructors at the top of the class
1. feature: Make myoro themes and add an ios26 theme
1. chore: Redo deploying and GitHub Actions
1. chore: Documentation

- Methodology of creating a `Widget` and the `configuration`/`view_model`/`controller` pattern
- Standards of state management
- Manipulating the UI of widgets via `ThemeExtension` overloading
- `ThemeExtension` overriding

1. feature: Publish to pub.dev
