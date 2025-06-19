<h1 align='center'>Coding practices & habits</h1>

## Formatter & auto-fixing code

- Always have auto-format enabled
- Before pushing anything run `dart tools/format_and_fix.dart`

## Object creation

- Models:
  - When possible, extend `Equatable` for comparability of objects
  - Always override and implement `toString` for better debugging
