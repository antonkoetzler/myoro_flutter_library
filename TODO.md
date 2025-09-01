# TODO

- (**IN PROGRESS**) Replace widgets with the injectable class now(ADD TO CHANGELOG WHEN DONE)
  - (**IN PROGRESS**) card
  - carousel
  - checkbox
  - divider
  - drawer
  - dropdown
  - feedback
  - form
  - graph
  - input
  - layout_builder
  - loader
  - menu
  - modal
  - picker
  - radio
  - screen
  - slider
  - snack_bar
  - tab_view
  - table
  - testing
  - tooltip
- Change app icon of storyboard
- 100% pub.dev score
- Delete `MyoroStatelessWidget` and `MyoroStatefulWidget` and use getIt and require the initialization function
  - The initialization function is especially important for localization, this isn't just for DI (it needs to be done)
- Delete kiwi container
- Make every `ThemeExtension` nullable to allow more customizability for `ThemeExtension` overriding
- Document VSCode goodies

## Technical debt that should be gradually resolved

1. Remove hard numbers in code and utilize `kMyoroMultiplier` variable for default multiplier
2. Bugs of storyboard
3. Scalability of widget showcase options in storyboard
4. Localize all text
