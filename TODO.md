# TODO

- (**IN PROGRESS**) MyoroFeedback, MyoroErrorFeedback, MyoroEmptyFeedback
- MyoroBottomSheet
- MyoroDropdown
  - Add field in configurations to set the initial values when the clear text button is pressed
  - Fix `MyoroSingularDropdownController` such that it wont show selectedItemsController as a field
  - Make another abstraction for dropdowns that can be empty and dropdowns that don't need to be empty, better DX

## Technical debt that should be gradually resolved

1. Remove hard numbers in code and utilize `kMyoroMultiplier` variable for default multiplier
2. Bugs of storyboard
3. Scalability of widget showcase options in storyboard
