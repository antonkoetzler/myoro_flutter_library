# STAGELOG

- feature: `MyoroInputConfiguration.obscureText`
- feature: `MyoroInputConfiguration.showToggleHiddenButton`
- feature: Various changes to `MyoroInputStyle`
- feature: `MyoroScreenConfiguration.drawerEnableOpenDragGesture`
- feature: `MyoroScreenConfiguration.endDrawerEnableOpenDragGesture`
- refactor: Name all notifier suffixes to controllers
- fix: `MyoroInput` state management to avoid `ValueKey` use for specific `Widget` recycling cases
- fix: Clear text button in `MyoroInput` (padding was off and it changed the height of the `MyoroInput` uglily)
- fix: Disable swipe to open drawers when there is no drawer available
- fix: Only allow one selected item for `MyoroSingleAccordion`
- improvement: Rename the storyboard to storybook
