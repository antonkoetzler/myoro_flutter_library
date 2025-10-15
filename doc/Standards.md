# Code standards

## Flutter version

Stable.

## Line length

120 (Dart's default).

## Ordering in classes

Within a class, the following order should be used: Constructors > factories > fields > functions > getters > setters.

## Nomenclature

### `ValueNotifier`s

Every `ValueNotifier`'s name needs to end with controller, not notifier.

## Code generation

MFL uses [Myoro Flutter Annotations](https://github.com/antonkoetzler/myoro_flutter_annotations) to create boilerplate code for models and `ThemeExtension`s. When a code generation build is required, run `dart run build_runner build`.

## Documenting your changes

1. Use `STAGELOG.md` to add what you did in your pull request. This will then be added to `CHANGELOG.md`. Here is the format (always in - format and there must be a space between the title and notes:

```markdown
# STAGELOG

- feature/fix/refactor/improvement/chore: Bla bla bla
```

2. If you're creating a new `Widget`, add it to [`Widgets.md`](https://github.com/antonkoetzler/myoro_flutter_library/blob/main/doc/Widgets.md).

## MVVM-C: MFL `Widget` architecture pattern

This idea is what I deem is the best for creating generic `Widget`s. It is a mix of MVVM and MVC. MVVM-C standards for (**M**odel **V**iew **V**iew **M**odel **C**ontroller). A `Widget` consists of:

1. The model: To encapsulate data;
1. The view: The `Widget`;
1. The view model: To store the logic of the `Widget`;
1. The controller: To provide public APIs to the user of the `Widget`. Within the MVVM-C pattern, controllers, when created, are responsible for creating the `Widget`s view model. This is due to the nature of the controller being naturally detached from the `Widget` until it is built.

## Dependencies of a MFL `Widget`

1. `ThemeExtension`: Every `Widget` must have a `ThemeExtension`;
1. Configuration model: Model to encapsulate every option that may to passed. Optional but often necessary;
1. Style model: Model to provide certain styles that `ThemeExtension` overriding doesn't achieve. Optional, but necessary for more customizable `Widget`s;
1. View models: If the `Widget` has logic (aka, not a simple `Widget` such as `MyoroCircularLoader`), a view model should be created;
1. Controllers: If the `Widget` must provide public APIs to control the `Widget` externally, a controller must be created;
1. Types: A separate file to place all `typedef`s created;
1. Miscellaneous: Models, enums, etc...

## Folder structure

### Plurality

Folders are never plural. Only a file name may be plural.

### Domain Driven Design (DDD)

Since MFL uses standard Flutter architectural design, the folder structure is DDD oriented. Here are some principles to create folders:

1. Top-level folders should be features: When creating a feature that offers many tools, such as the `lib/src/widget` folder, which offers `Widget`s, we priortize top-level folders to be features. Within these features folder, we place all of our generic folders that it utilizes (`_widget`, `controller`, `model`, `function`, etc).

### `lib/src/features`

Every folder within this folder is a feature that MFL offers. Everything is within `lib/src/features` so MFL may only be imported like so:

```dart
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
```

### `lib/src/features/widget`

Every folder in `lib/src/widget` is a `Widget` category. Every folder within a widget category folder is a `Widget`. Within `Widget` folders, you will create all of the generic folders that are used within the `Widget`'s implementation.

## Storybook

Application used to design and view the functionality of every MFL `Widget`. Every MFL `Widget` must have a `Widget` showcase in the storybook. The code standards of the storybook follow the same principles as `lib`, thus the folder structure is quite self explanatory.
