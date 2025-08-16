// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get myoroFilePickerPickerButtonText => 'Examinar';

  @override
  String get myoroFilePickerSelectedFileUnselectedText =>
      'Ningún archivo seleccionado.';

  @override
  String get myoroImagePickerSelectionTypeModalText =>
      'Seleccionar fuente de la imagen';

  @override
  String get myoroImagePickerSelectionTypeModalButtonCameraText =>
      'Abrir cámara';

  @override
  String get myoroImagePickerSelectionTypeModalButtonGalleryText =>
      'Explorar galería';
}
