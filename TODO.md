# TODO

1. improvement: Remove adapter controllers entirely and only provide bloc
1. refactor: Revamp on folder structure and privatize private `Widgets`s of `Widget` files
1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. (**IN PROGRESS**) improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- Open modal instead of compsitioned layer thing with `MyoroDropdown`
- (**IN PROGRESS**) Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`

1. Publish to pub.dev
