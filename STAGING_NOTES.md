# STAGELOG

- feature: Added `MyoroFontSizeEnum.extraLarge`
- feature: `myoroFake`
- feature: `MyoroStringExtension`
- feature: Kill `MyoroResolver` and create `MyoroRequest` and `MyoroRequestController`
- feature: Code generated models and `ThemeExtension`s
- refactor: Adopt official Flutter MVVM/DDD architecture
- refactor: Make every `Widget` have a configuration file instead of arguments in the `Widget`
- refactor: Rename `MyoroMaterialApp` to `MyoroApp`
- refactor: Various MFL widgets refactored during MVVM refactor
- improvement: Input formatters
- improvement: Kill `MyoroDecorationHelper`, `MyoroColorDesignSystem.primary`, `MyoroColorDesignSystem.onPrimary` to encourage good Flutter styling standards
- improvement: Kill `MyoroCrudService`
- improvement: Set the line length to 100
- improvement: Remove plural naming
- improvement: Remove `finder` functions
- chore: `_Enabled` --> `_Provided` in `copyWith` functions
- chore: Remove `final` from various classes to allow extensions
