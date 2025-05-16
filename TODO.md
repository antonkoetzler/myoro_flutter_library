# TODO

1. refactor: app architecture revamp

- Completely separate `controllers` from `Bloc`s and make controllers classes that provide public state
- DDD folder structure

1. Make private `Widget`s separated by file and use `part`/`part of`
1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. (**IN PROGRESS**) improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- (**IN PROGRESS**) Open modal instead of compsitioned layer thing with `MyoroDropdown`
- (**IN PROGRESS**) Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`
- Make `MyoroSnackBar` width 100% on mobile
