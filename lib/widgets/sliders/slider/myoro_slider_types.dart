/// Function that formats the value of a slider (to display a time like "1:59" for example).
typedef MyoroSliderIndicatorTextBuilder = String Function(double value);

/// Function executed when the value of the slider changes.
typedef MyoroSliderOnChanged = void Function(double value);
