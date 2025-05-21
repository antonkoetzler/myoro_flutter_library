# TODO

1. (**IN PROGRESS**) Make private `Widget`s separated by file and use `part`/`part of`
1. (**IN PROGRESS**) refactor: DDD architecture and more universal coding standards

- Official state management solution:
  - Every `Widget` with state (not just a visual `Widget` like `MyoroCard`) has a controller
    - Every controller has an abstract class and an implementation class; C++ style
- DDD folder structure

TODO

- (**DONE, NEED TO CONTROLLERIZE**) accordions
- (**DONE, NEED TO CONTROLLERIZE**) app_bars
- (**DONE, NEED TO CONTROLLERIZE**) apps
- (**DONE, NEED TO CONTROLLERIZE**) buttons
- (**DONE, NEED TO CONTROLLERIZE**) cards
- (**DONE, NEED TO CONTROLLERIZE**) carousels
- (**DONE, NEED TO CONTROLLERIZE**) checkboxes
- (**DONE, NEED TO CONTROLLERIZE**) dividers
- (**DONE, NEED TO CONTROLLERIZE**) drawers
- (**DONE, NEED TO CONTROLLERIZE**) dropdowns
- (**DONE**) forms
- (**DONE, NEED TO CONTROLLERIZE**) graphs
- (**DONE, NEED TO CONTROLLERIZE**) inputs
- (**DONE**) layout_builders
- (**DONE**) loaders
- (**DONE, THIS IS THE GOLD STANDARD**) menus
- (**DONE**) modals
- (**DONE**) radios
- (**DONE**) screens
- (**DONE**) sliders
- (**DONE**) snack_bars
- (**DONE**) tables
- testing
- tooltips
- Storyboard
- Delete bloc packages everywhere
- Make configuration passable to controller or widget, this avoids the didUpdateWidget problem

1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- Open modal instead of compsitioned layer thing with `MyoroDropdown`
- Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`
- Make `MyoroSnackBar` width 100% on mobile

1. feature: 100% code coverage
1. feature: Publish to pub.dev
