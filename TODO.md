# TODO

1. feature: Retest everything 100% code coverage
1. improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- Open modal instead of compsitioned layer thing with `MyoroDropdown`
- Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`
  - Do the same thing with `MyoroSearchInput`
- Make `MyoroSnackBar` width 100% on every platform (#FlutterMoment)

1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. improvement: Add view model of a `Widget` to provider scope to not have to pass by argument
1. improvement: Remove stylistic arguments from configuration models and force `ThemeExtension` overriding
1. (**IN PROGRESS**) feature: Code generation for boilerplate

- https://medium.com/@michael_dark/annotation-based-code-generation-in-dart-694b9fba2fa9
- <https://medium.com/@yamen.abd98/code-generator-using-flutter-source-gen-build-runner-9cc1fe0e2ff2>
- <https://www.kodeco.com/22180993-flutter-code-generation-getting-started>

1. chore: Constructors at the top of the class
1. chore: Learn about using `library`
1. chore: Documentation

- Methodology of creating a `Widget` and the `configuration`/`view_model`/`controller` pattern
- Standards of state management
- Manipulating the UI of widgets via `ThemeExtension` overloading
- `ThemeExtension` overriding

1. feature: Publish to pub.dev
