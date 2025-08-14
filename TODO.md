# TODO

- Documentation
  - All widgets available
  - Theme extension overwritting
- Location dropdown input
- Localization (of MFL and storyboard)
- Change app icon of storyboard
- 100% pub.dev score
- Delete `MyoroStatelessWidget` and `MyoroStatefulWidget` and use getIt and require the initialization function
  - The initialization function is especially important for localization, this isn't just for DI (it needs to be done)
- Delete kiwi container from storyboard and use get it

## Technical debt that should be gradually resolved

1. Remove hard numbers in code and utilize `kMyoroMultiplier` variable for default multiplier
2. Bugs of storyboard
3. Scalability of widget showcase options in storyboard
4. Localize all text
