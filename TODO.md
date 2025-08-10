# TODO

- MyoroDropdown
  - Add field in configurations to set the initial values when the clear text button is pressed
  - Fix `MyoroSingularDropdownController` such that it wont show selectedItemsController as a field
  - Make another abstraction for dropdowns that can be empty and dropdowns that don't need to be empty, better DX
- MyoroImagePicker
- MyoroFilePicker
- Double thumb slider of MyoroSlider
- Documentation for all widgets available
- Location dropdown
- fix `MyoroStatelessWidget` and `MyoroStatefulWidget`, the logic sucks with widgets containing controllers
- 100% pub.dev score

## Technical debt that should be gradually resolved

1. Remove hard numbers in code and utilize `kMyoroMultiplier` variable for default multiplier
2. Bugs of storyboard
3. Scalability of widget showcase options in storyboard
