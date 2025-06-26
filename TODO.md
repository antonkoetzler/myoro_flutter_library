# TODO

1. chore: Go through every widget showcase looking for bugs

- (**IN PROGRESS**) button
- card
- carousel
- checkbox
- divider
- drawer
- dropdown
  - Make it so that the `MyoroInput` and `MyoroMenu` attach and are not apart
- form
- graph
- input
  - Make it so that no `InputBorder` is used anymore. Make it a `Container` to bypass `InputBorder`s
- layout_builder
- loader
- menu
- modal
- radio
- screen
- slider
- snack_bar
- table
- testing
- tooltip

2. chore: Implement tests once everything seems stable
3. chore: Documentation

- Methodology of creating a `Widget` and the `configuration`/`view_model`/`controller` pattern
  - How to handle `StatefulWidget`s and setting fields of a view model dependent on the `StatefulWidget`s fields (See `MyoroAccordionState.configuration`)
- Standards of state management
- Manipulating the UI of widgets via `ThemeExtension` overloading
- `ThemeExtension` overriding and in general the styling of widgets

4. chore: Fix pubspec.yaml todo with myoro_flutter_annotations in both pubspecs
5. chore: Redo deploying and GitHub Actions
6. feature: Publish to pub.dev
