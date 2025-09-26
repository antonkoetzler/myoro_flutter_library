import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/src/l10n/gen/app_localizations_en.dart';
import 'package:myoro_flutter_library/src/l10n/gen/app_localizations_es.dart';
import 'package:myoro_flutter_library/src/l10n/gen/app_localizations_pt.dart';

void main() {
  test('AppLocalizationsEn getters', () {
    final localizations = AppLocalizationsEn();

    expect(localizations.myoroFilePickerPickerButtonText, equals('Browse'));
    expect(localizations.myoroFilePickerSelectedFileUnselectedText, equals('No file selected.'));
    expect(localizations.myoroImagePickerSelectionTypeModalText, equals('Select image source'));
    expect(localizations.myoroImagePickerSelectionTypeModalButtonCameraText, equals('Open camera'));
    expect(localizations.myoroImagePickerSelectionTypeModalButtonGalleryText, equals('Browse gallery'));
  });

  test('AppLocalizationsEs getters', () {
    final localizations = AppLocalizationsEs();

    expect(localizations.myoroFilePickerPickerButtonText, equals('Examinar'));
    expect(localizations.myoroFilePickerSelectedFileUnselectedText, equals('Ningún archivo seleccionado.'));
    expect(localizations.myoroImagePickerSelectionTypeModalText, equals('Seleccionar fuente de la imagen'));
    expect(localizations.myoroImagePickerSelectionTypeModalButtonCameraText, equals('Abrir cámara'));
    expect(localizations.myoroImagePickerSelectionTypeModalButtonGalleryText, equals('Explorar galería'));
  });

  test('AppLocalizationsPt getters', () {
    final localizations = AppLocalizationsPt();

    expect(localizations.myoroFilePickerPickerButtonText, equals('Procurar'));
    expect(localizations.myoroFilePickerSelectedFileUnselectedText, equals('Nenhum arquivo selecionado.'));
    expect(localizations.myoroImagePickerSelectionTypeModalText, equals('Selecionar origem da imagem'));
    expect(localizations.myoroImagePickerSelectionTypeModalButtonCameraText, equals('Abrir câmera'));
    expect(localizations.myoroImagePickerSelectionTypeModalButtonGalleryText, equals('Procurar na galeria'));
  });
}
