# STAGELOG

- feature: `MyoroCurrencyInput`
- feature: `myoroNullableFake`
- (**IN PROGRESS**) feature: Full documentation of the project via Notion, not markdown
  - Use Notion MCP to do this quicker
- fix: Date picker not opening in `MyoroDatePickerInput`
- (**WE ARE ON CHECKBOXES RIGHT NOW**) (**IN PROGRESS**) Remove configuration model pattern
  - (**TODO**) Document this (CONTROLLER & INITIALLY SELECTED ITEM VALUE, FIX MYOROFORM AS WELL)
  - Rename model folder shite to `lib/feature/widget/shared`
  - Rename all `model` folders with just configuration models to `configuration`
- (**IN PROGRESS**) refactor: Remove `model` folder to use more specific, DDD orientated folders such as `style`, `configuration`, etc
- refactor: Remove `MyoroInput.number` create `MyoroNumberInput`
- improvement: Add public `Widget`s in a `widget` folder
- refactor: Massive simplification and optimization of `Widget` states
