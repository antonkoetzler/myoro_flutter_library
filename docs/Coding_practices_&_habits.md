<h1 align='center'>Coding practices & habits</h1>

## Formatter & auto-fixing code

1. Always have auto-format enabled;
1. Before pushing anything run `dart tools/format_and_fix.dart`.

## Object creation

1. Models:

- When possible, extend `Equatable` for comparability of objects;
- Always override and implement `toString` for better debugging.

2. Widgets:

- Always declare a static `finder` function for testing.
