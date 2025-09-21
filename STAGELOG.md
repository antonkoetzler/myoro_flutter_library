# STAGELOG

- feature: `kMyoroEmptyString`
- feature: `ThemeExtension` overriding integrated into MFL `Widget`s and centralization of styling by only passing style fields to `ThemeExtension`s
- feature: `.windsurf` rules
- refactor: `MyoroMenu` --> `MyoroSingularMenu` and `MyoroMultiMenu`
- refactor: Changed all `Widget`s containing "Singular" to be "Single" (i.e. `MyoroSingularDropdown` --> `MyoroSingleDropdown`)
- improvement: Rename `ValueNotifier`s with the controller suffix to notifier (i.e. `MyoroFormController` --> `MyoroFormNotifier`)
- improvement: New tasks added to `tool` and `.vscode`
- improvement: Make fields of all `ThemeExtension`s nullable to allow more customizability
- improvement: Add another DDD layer within a `lib/src/feature/widget/widget/_/widget` for shared implemented within a category of `Widget`s
- chore: Add `copyWith` to models as `myoro_flutter_annotations` does not generate it with `myoroModel`s
