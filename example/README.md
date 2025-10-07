# How do I get started with MFL in my project?

1. Add MFL as a dependency in your <code>pubspec.yaml</code> with one of the 3 ways listed:

``` yaml
...

dependencies:
  ...

  # Resolving from disk
  myoro_flutter_library:
    path: path/to/mfl

  # Resolving from GitHub
  myoro_flutter_library:
    git:
      url: git@github.com:antonkoetzler/myoro_flutter_library

  # Resolving from https://pub.dev/
  myoro_flutter_library: any

...
```

2. Make sure your `MyoroApp` is your root widget:

3. Enjoy!
