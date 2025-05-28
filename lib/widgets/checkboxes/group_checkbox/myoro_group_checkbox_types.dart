/// Checkboxes of the group. Provided as a map for speed and ease of navigation.
typedef MyoroGroupCheckboxItems = Map<String, bool>;

/// Function executed when any of the checkbox's values are changed.
typedef MyoroGroupCheckboxOnChanged = void Function(String key, MyoroGroupCheckboxItems items);
