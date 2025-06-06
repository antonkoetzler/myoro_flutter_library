// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_constraints_widget_showcase_option_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $BoxConstraintsWidgetShowcaseOptionConfigurationExtension
    on BoxConstraintsWidgetShowcaseOptionConfiguration {
  BoxConstraintsWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    void Function(BoxConstraints)? onChanged,
  }) {
    return BoxConstraintsWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      onChanged: onChanged ?? this.onChanged,
    );
  }
}

/// Apply this mixin to [BoxConstraintsWidgetShowcaseOptionConfiguration] once the code is generated.
///
/// ```dart
/// class BoxConstraintsWidgetShowcaseOptionConfiguration with $BoxConstraintsWidgetShowcaseOptionConfigurationMixin {}
/// ```
mixin $BoxConstraintsWidgetShowcaseOptionConfigurationMixin {
  BoxConstraintsWidgetShowcaseOptionConfiguration get self =>
      this as BoxConstraintsWidgetShowcaseOptionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is BoxConstraintsWidgetShowcaseOptionConfiguration &&
        other.runtimeType == runtimeType &&
        other.label == self.label &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.label, self.onChanged);
  }

  @override
  String toString() =>
      'BoxConstraintsWidgetShowcaseOptionConfiguration(\n'
      '  label: ${self.label},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
