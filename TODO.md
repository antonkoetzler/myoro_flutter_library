# TODO

1. (**IN PROGRESS**) Make private `Widget`s separated by file and use `part`/`part of`
1. (**IN PROGRESS**) refactor: DDD architecture and more universal coding standards

- Official state management solution:
  - Every `Widget` with state (not just a visual `Widget` like `MyoroCard`) has a controller
    - Every controller has an abstract class and an implementation class; C++ style
- DDD folder structure

TODO

- (**DONE, NEED TO VIEWMODELIZE**) accordions
- (**DONE, NEED TO VIEWMODELIZE**) app_bars
- (**DONE, NEED TO VIEWMODELIZE**) apps
- (**DONE, NEED TO VIEWMODELIZE**) buttons
- (**DONE, NEED TO VIEWMODELIZE**) cards
- (**DONE, NEED TO VIEWMODELIZE**) carousels
- (**DONE, NEED TO VIEWMODELIZE**) checkboxes
- (**DONE, NEED TO VIEWMODELIZE**) dividers
- (**DONE, NEED TO VIEWMODELIZE**) drawers
- (**DONE, NEED TO VIEWMODELIZE**) dropdowns
- (**DONE, NEED TO VIEWMODELIZE**) forms
- (**DONE, NEED TO VIEWMODELIZE**) graphs
- (**DONE**) inputs
- (**DONE**) layout_builders
- loaders
- menus
- modals
- radios
- resolvers
- screens
- sliders
- snack_bars
- tables
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
