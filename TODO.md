# TODO

1. chore: Go through every widget showcase looking for bugs

- (**IN PROGRESS**) Make a clear header for every widget showcase option
- (**IN PROGRESS**) button
  - (**DONE**) `MyoroButtonWidgetShowcaseScreen`
  - (**IN PROGRESS**) `MyoroIconTextButtonWidgetShowcaseScreen`
    - Make `MyoroIconTextButtonConfiguration` extend `MyoroButtonConfiguration`
    - Do the same thing with `MyoroDialogModalConfiguration`
- card
- carousel
- checkbox
- divider
- drawer
- dropdown
- form
- graph
- input
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

2. chore: Documentation

- Methodology of creating a `Widget` and the `configuration`/`view_model`/`controller` pattern
  - How to handle `StatefulWidget`s and setting fields of a view model dependent on the `StatefulWidget`s fields (See `MyoroAccordionState.configuration`)
- Standards of state management
- Manipulating the UI of widgets via `ThemeExtension` overloading
- `ThemeExtension` overriding and in general the styling of widgets

3. chore: Implement tests
4. chore: Fix pubspec.yaml todo with myoro_flutter_annotations in both pubspecs
5. chore: Redo deploying and GitHub Actions
6. feature: Publish to pub.dev
