# TODO

1. (**IN PROGRESS**) Make private `Widget`s separated by file and use `part`/`part of`
1. (**IN PROGRESS**) refactor: DDD architecture and more universal coding standards

- Official state management solution:
  - Every `Widget` with state (not just a visual `Widget` like `MyoroCard`) has a controller
    - Every controller has an abstract class and an implementation class; C++ style
- DDD folder structure

TODO

- (**DONE**) accordions
- (**DONE**) app_bars
- (**DONE**) apps
- (**DONE**) buttons
- (**DONE**) cards
- (**REVISE**) carousels
- (**REVISE**) checkboxes
- (**REVISE**) dividers
- (**REVISE**) drawers
- (**REVISE**) dropdowns
- (**REVISE**) forms
- (**REVISE**) graphs
- (**REVISE**) inputs
- (**REVISE**) layout_builders
- (**REVISE**) loaders
- (**REVISE**) menus
- (**REVISE**) modals
- (**REVISE**) radios
- (**REVISE**) screens
- (**REVISE**) sliders
- (**REVISE**) snack_bars
- (**REVISE**) tables
- (**REVISE**) testing
- (**REVISE**) tooltips
- Storyboard
- Delete bloc packages everywhere
- Make configuration passable to controller or widget, this avoids the didUpdateWidget problem

1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- Open modal instead of compsitioned layer thing with `MyoroDropdown`
- Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`
- Make `MyoroSnackBar` width 100% on mobile

1. improvement: Constructors at the top of classes
1. feature: 100% code coverage
1. feature: Publish to pub.dev
