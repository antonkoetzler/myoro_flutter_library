# STAGELOG

- feature: `kMyoroEmptyString`
- refactor: `MyoroMenu` --> `MyoroSingularMenu` and `MyoroMultiMenu`
- refactor: `MyoroStatelessWidget` and `MyoroStatefulWidgets` are now `MyoroThemeExtensionInjectedStatelessWidget` and `MyoroThemeExtensionInjectedStatefulWidget`
- improvement: Rename `ValueNotifier`s with the controller suffix to notifier (i.e. `MyoroFormController` --> `MyoroFormNotifier`)
- improvement: Add `tool/initialize.sh`
- improvement: Add tasks to `.vscode`
- improvement: Make fields of all `ThemeExtension`s nullable to allow more customizability
- improvement: Add another DD layer within a `lib/src/feature/widget/widget/_/widget` for shared implemented within a category of `Widget`s
- chore: Add `copyWith` to models as `myoro_flutter_annotations` does not generate it with `myoroModel`s
