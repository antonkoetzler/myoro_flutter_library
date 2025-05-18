# TODO

1. (**IN PROGRESS**) Make private `Widget`s separated by file and use `part`/`part of`
1. (**IN PROGRESS**) refactor: DDD architecture and more universal coding standards

- Official state management solution:
  - Every `Widget` with state (not just a visual `Widget` like `MyoroCard`), it uses `Bloc` for state management;
  - Every `Widget` with a controller is only a class to provide public APIs for state management and control and listeners
- DDD folder structure

TODO

- accordions
- app_bars
- apps
- buttons
- cards
- carousels
- checkboxes
- dividers
- drawers
- dropdowns
- forms
- graphs
- inputs
- layout_builders
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

1. improvement: Make only `myoro_flutter_library.dart` exportable

- <https://dart.dev/tools/pub/create-packages>: Putting all the code in `src` makes it so projects using MFL cannot export via `exports.dart` files

1. improvement: Improve various `Widget`s and especially improve said `Widget`s on mobile

- Open modal instead of compsitioned layer thing with `MyoroDropdown`
- Make it so that `_Menu` in `MyoroDropdown` can use `CompositedTransformTarget` + `OverlayPortal` or a non-`Overlay`
- Make `MyoroSnackBar` width 100% on mobile

1. feature: 100% code coverage
1. feature: Publish to pub.dev
