import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating the days of the week.
enum MyoroDayEnum {
  /// Monday.
  monday,

  /// Tuesday.
  tuesday,

  /// Wednesday.
  wednesday,

  /// Thursday.
  thursday,

  /// Friday.
  friday,

  /// Saturday.
  saturday,

  /// Sunday.
  sunday;

  /// Label.
  String getLabel(BuildContext context) {
    final localization = context.localization;
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
    final localization = context.localization;
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
