# TODO

1. refactor: Official Flutter app architecture revamp

- Official state management solution: Every `Widget` has a view model. All controllers are now public, external APIs that expose the state of view models. Furthermore, every controller has a private variable to the view model for easy future exposure.
- DDD folder structure

1. Make private `Widget`s separated by file and use `part`/`part of`
1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. (**IN PROGRESS**) improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- (**IN PROGRESS**) Open modal instead of compsitioned layer thing with `MyoroDropdown`
- (**IN PROGRESS**) Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`
- Make `MyoroSnackBar` width 100% on mobile
