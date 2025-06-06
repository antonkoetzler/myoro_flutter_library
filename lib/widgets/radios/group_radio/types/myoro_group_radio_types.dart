/// Radios of the group. Provided as a map for speed and ease of navigation.
typedef MyoroGroupRadioItems = Map<String, bool>;

/// Function executed when any of the radio's values are changed.
typedef MyoroGroupRadioOnChanged = void Function(String keyChanged, MyoroGroupRadioItems items);
