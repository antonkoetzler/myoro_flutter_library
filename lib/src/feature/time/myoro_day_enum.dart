import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating the days of the week.
@JsonEnum()
enum MyoroDayEnum {
  /// Monday.
  @JsonValue('MONDAY')
  monday,

  /// Tuesday.
  @JsonValue('TUESDAY')
  tuesday,

  /// Wednesday.
  @JsonValue('WEDNESDAY')
  wednesday,

  /// Thursday.
  @JsonValue('THURSDAY')
  thursday,

  /// Friday.
  @JsonValue('FRIDAY')
  friday,

  /// Saturday.
  @JsonValue('SATURDAY')
  saturday,

  /// Sunday.
  @JsonValue('SUNDAY')
  sunday;

  /// Label.
  String getLabel(BuildContext context) {
    final localization = context.mflLocalization;
    final myoroDayEnumMondayLabel = localization.myoroDayEnumMondayLabel;
    final myoroDayEnumTuesdayLabel = localization.myoroDayEnumTuesdayLabel;
    final myoroDayEnumWednesdayLabel = localization.myoroDayEnumWednesdayLabel;
    final myoroDayEnumThursdayLabel = localization.myoroDayEnumThursdayLabel;
    final myoroDayEnumFridayLabel = localization.myoroDayEnumFridayLabel;
    final myoroDayEnumSaturdayLabel = localization.myoroDayEnumSaturdayLabel;
    final myoroDayEnumSundayLabel = localization.myoroDayEnumSundayLabel;

    return switch (this) {
      monday => myoroDayEnumMondayLabel,
      tuesday => myoroDayEnumTuesdayLabel,
      wednesday => myoroDayEnumWednesdayLabel,
      thursday => myoroDayEnumThursdayLabel,
      friday => myoroDayEnumFridayLabel,
      saturday => myoroDayEnumSaturdayLabel,
      sunday => myoroDayEnumSundayLabel,
    };
  }

  /// First letter.
  String getFirstLetter(BuildContext context) {
    final localization = context.mflLocalization;
    final myoroDayEnumMondayFirstLetter = localization.myoroDayEnumMondayFirstLetter;
    final myoroDayEnumTuesdayFirstLetter = localization.myoroDayEnumTuesdayFirstLetter;
    final myoroDayEnumWednesdayFirstLetter = localization.myoroDayEnumWednesdayFirstLetter;
    final myoroDayEnumThursdayFirstLetter = localization.myoroDayEnumThursdayFirstLetter;
    final myoroDayEnumFridayFirstLetter = localization.myoroDayEnumFridayFirstLetter;
    final myoroDayEnumSaturdayFirstLetter = localization.myoroDayEnumSaturdayFirstLetter;
    final myoroDayEnumSundayFirstLetter = localization.myoroDayEnumSundayFirstLetter;

    return switch (this) {
      monday => myoroDayEnumMondayFirstLetter,
      tuesday => myoroDayEnumTuesdayFirstLetter,
      wednesday => myoroDayEnumWednesdayFirstLetter,
      thursday => myoroDayEnumThursdayFirstLetter,
      friday => myoroDayEnumFridayFirstLetter,
      saturday => myoroDayEnumSaturdayFirstLetter,
      sunday => myoroDayEnumSundayFirstLetter,
    };
  }
}
