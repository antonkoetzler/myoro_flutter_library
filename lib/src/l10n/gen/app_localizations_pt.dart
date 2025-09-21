// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get myoroFilePickerPickerButtonText => 'Procurar';

  @override
  String get myoroFilePickerSelectedFileUnselectedText =>
      'Nenhum arquivo selecionado.';

  @override
  String get myoroImagePickerSelectionTypeModalText =>
      'Selecionar origem da imagem';

  @override
  String get myoroImagePickerSelectionTypeModalButtonCameraText =>
      'Abrir câmera';

  @override
  String get myoroImagePickerSelectionTypeModalButtonGalleryText =>
      'Procurar na galeria';
}
