// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get myoroFilePickerPickerButtonText => 'Browse';

  @override
  String get myoroFilePickerSelectedFileUnselectedText => 'No file selected.';

  @override
  String get myoroImagePickerSelectionTypeModalText => 'Select image source';

  @override
  String get myoroImagePickerSelectionTypeModalButtonCameraText =>
      'Open camera';

  @override
  String get myoroImagePickerSelectionTypeModalButtonGalleryText =>
      'Browse gallery';
}
