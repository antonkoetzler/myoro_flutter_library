import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('th'),
    Locale('tr'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW'),
  ];

  /// No description provided for @myoroFilePickerPickerButtonText.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get myoroFilePickerPickerButtonText;

  /// No description provided for @myoroFilePickerSelectedFileUnselectedText.
  ///
  /// In en, this message translates to:
  /// **'No file selected.'**
  String get myoroFilePickerSelectedFileUnselectedText;

  /// No description provided for @myoroFilePickerDefaultDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Select File'**
  String get myoroFilePickerDefaultDialogTitle;

  /// No description provided for @myoroImagePickerSelectionTypeModalText.
  ///
  /// In en, this message translates to:
  /// **'Select image source'**
  String get myoroImagePickerSelectionTypeModalText;

  /// No description provided for @myoroImagePickerSelectionTypeModalButtonCameraText.
  ///
  /// In en, this message translates to:
  /// **'Open camera'**
  String get myoroImagePickerSelectionTypeModalButtonCameraText;

  /// No description provided for @myoroImagePickerSelectionTypeModalButtonGalleryText.
  ///
  /// In en, this message translates to:
  /// **'Browse gallery'**
  String get myoroImagePickerSelectionTypeModalButtonGalleryText;

  /// No description provided for @myoroMenuErrorGettingItemsText.
  ///
  /// In en, this message translates to:
  /// **'Error getting items.'**
  String get myoroMenuErrorGettingItemsText;

  /// No description provided for @myoroCurrencyEnumUsdFormalName.
  ///
  /// In en, this message translates to:
  /// **'US Dollar'**
  String get myoroCurrencyEnumUsdFormalName;

  /// No description provided for @myoroCurrencyEnumCadFormalName.
  ///
  /// In en, this message translates to:
  /// **'Canadian Dollar'**
  String get myoroCurrencyEnumCadFormalName;

  /// No description provided for @myoroCurrencyEnumBrlFormalName.
  ///
  /// In en, this message translates to:
  /// **'Brazilian Real'**
  String get myoroCurrencyEnumBrlFormalName;

  /// No description provided for @myoroCurrencyEnumBtcFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin'**
  String get myoroCurrencyEnumBtcFormalName;

  /// No description provided for @myoroCurrencyEnumEurFormalName.
  ///
  /// In en, this message translates to:
  /// **'Euro'**
  String get myoroCurrencyEnumEurFormalName;

  /// No description provided for @myoroCurrencyEnumGbpFormalName.
  ///
  /// In en, this message translates to:
  /// **'British Pound'**
  String get myoroCurrencyEnumGbpFormalName;

  /// No description provided for @myoroCurrencyEnumJpyFormalName.
  ///
  /// In en, this message translates to:
  /// **'Japanese Yen'**
  String get myoroCurrencyEnumJpyFormalName;

  /// No description provided for @myoroCurrencyEnumCnyFormalName.
  ///
  /// In en, this message translates to:
  /// **'Chinese Yuan'**
  String get myoroCurrencyEnumCnyFormalName;

  /// No description provided for @myoroCurrencyEnumInrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Indian Rupee'**
  String get myoroCurrencyEnumInrFormalName;

  /// No description provided for @myoroCurrencyEnumAudFormalName.
  ///
  /// In en, this message translates to:
  /// **'Australian Dollar'**
  String get myoroCurrencyEnumAudFormalName;

  /// No description provided for @myoroCurrencyEnumChfFormalName.
  ///
  /// In en, this message translates to:
  /// **'Swiss Franc'**
  String get myoroCurrencyEnumChfFormalName;

  /// No description provided for @myoroCurrencyEnumSekFormalName.
  ///
  /// In en, this message translates to:
  /// **'Swedish Krona'**
  String get myoroCurrencyEnumSekFormalName;

  /// No description provided for @myoroCurrencyEnumNokFormalName.
  ///
  /// In en, this message translates to:
  /// **'Norwegian Krone'**
  String get myoroCurrencyEnumNokFormalName;

  /// No description provided for @myoroCurrencyEnumDkkFormalName.
  ///
  /// In en, this message translates to:
  /// **'Danish Krone'**
  String get myoroCurrencyEnumDkkFormalName;

  /// No description provided for @myoroCurrencyEnumPlnFormalName.
  ///
  /// In en, this message translates to:
  /// **'Polish Zloty'**
  String get myoroCurrencyEnumPlnFormalName;

  /// No description provided for @myoroCurrencyEnumCzkFormalName.
  ///
  /// In en, this message translates to:
  /// **'Czech Koruna'**
  String get myoroCurrencyEnumCzkFormalName;

  /// No description provided for @myoroCurrencyEnumHufFormalName.
  ///
  /// In en, this message translates to:
  /// **'Hungarian Forint'**
  String get myoroCurrencyEnumHufFormalName;

  /// No description provided for @myoroCurrencyEnumRonFormalName.
  ///
  /// In en, this message translates to:
  /// **'Romanian Leu'**
  String get myoroCurrencyEnumRonFormalName;

  /// No description provided for @myoroCurrencyEnumBgnFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bulgarian Lev'**
  String get myoroCurrencyEnumBgnFormalName;

  /// No description provided for @myoroCurrencyEnumHrkFormalName.
  ///
  /// In en, this message translates to:
  /// **'Croatian Kuna'**
  String get myoroCurrencyEnumHrkFormalName;

  /// No description provided for @myoroCurrencyEnumRsdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Serbian Dinar'**
  String get myoroCurrencyEnumRsdFormalName;

  /// No description provided for @myoroCurrencyEnumMkdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Macedonian Denar'**
  String get myoroCurrencyEnumMkdFormalName;

  /// No description provided for @myoroCurrencyEnumAllFormalName.
  ///
  /// In en, this message translates to:
  /// **'Albanian Lek'**
  String get myoroCurrencyEnumAllFormalName;

  /// No description provided for @myoroCurrencyEnumBamFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bosnia and Herzegovina Convertible Mark'**
  String get myoroCurrencyEnumBamFormalName;

  /// No description provided for @myoroCurrencyEnumMxnFormalName.
  ///
  /// In en, this message translates to:
  /// **'Mexican Peso'**
  String get myoroCurrencyEnumMxnFormalName;

  /// No description provided for @myoroCurrencyEnumArsFormalName.
  ///
  /// In en, this message translates to:
  /// **'Argentine Peso'**
  String get myoroCurrencyEnumArsFormalName;

  /// No description provided for @myoroCurrencyEnumClpFormalName.
  ///
  /// In en, this message translates to:
  /// **'Chilean Peso'**
  String get myoroCurrencyEnumClpFormalName;

  /// No description provided for @myoroCurrencyEnumCopFormalName.
  ///
  /// In en, this message translates to:
  /// **'Colombian Peso'**
  String get myoroCurrencyEnumCopFormalName;

  /// No description provided for @myoroCurrencyEnumPenFormalName.
  ///
  /// In en, this message translates to:
  /// **'Peruvian Sol'**
  String get myoroCurrencyEnumPenFormalName;

  /// No description provided for @myoroCurrencyEnumUyuFormalName.
  ///
  /// In en, this message translates to:
  /// **'Uruguayan Peso'**
  String get myoroCurrencyEnumUyuFormalName;

  /// No description provided for @myoroCurrencyEnumPygFormalName.
  ///
  /// In en, this message translates to:
  /// **'Paraguayan Guaraní'**
  String get myoroCurrencyEnumPygFormalName;

  /// No description provided for @myoroCurrencyEnumBobFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bolivian Boliviano'**
  String get myoroCurrencyEnumBobFormalName;

  /// No description provided for @myoroCurrencyEnumVesFormalName.
  ///
  /// In en, this message translates to:
  /// **'Venezuelan Bolívar'**
  String get myoroCurrencyEnumVesFormalName;

  /// No description provided for @myoroCurrencyEnumGtqFormalName.
  ///
  /// In en, this message translates to:
  /// **'Guatemalan Quetzal'**
  String get myoroCurrencyEnumGtqFormalName;

  /// No description provided for @myoroCurrencyEnumHnlFormalName.
  ///
  /// In en, this message translates to:
  /// **'Honduran Lempira'**
  String get myoroCurrencyEnumHnlFormalName;

  /// No description provided for @myoroCurrencyEnumNioFormalName.
  ///
  /// In en, this message translates to:
  /// **'Nicaraguan Córdoba'**
  String get myoroCurrencyEnumNioFormalName;

  /// No description provided for @myoroCurrencyEnumCrcFormalName.
  ///
  /// In en, this message translates to:
  /// **'Costa Rican Colón'**
  String get myoroCurrencyEnumCrcFormalName;

  /// No description provided for @myoroCurrencyEnumPabFormalName.
  ///
  /// In en, this message translates to:
  /// **'Panamanian Balboa'**
  String get myoroCurrencyEnumPabFormalName;

  /// No description provided for @myoroCurrencyEnumDopFormalName.
  ///
  /// In en, this message translates to:
  /// **'Dominican Peso'**
  String get myoroCurrencyEnumDopFormalName;

  /// No description provided for @myoroCurrencyEnumHtgFormalName.
  ///
  /// In en, this message translates to:
  /// **'Haitian Gourde'**
  String get myoroCurrencyEnumHtgFormalName;

  /// No description provided for @myoroCurrencyEnumJmdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Jamaican Dollar'**
  String get myoroCurrencyEnumJmdFormalName;

  /// No description provided for @myoroCurrencyEnumBbdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Barbadian Dollar'**
  String get myoroCurrencyEnumBbdFormalName;

  /// No description provided for @myoroCurrencyEnumBzdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Belize Dollar'**
  String get myoroCurrencyEnumBzdFormalName;

  /// No description provided for @myoroCurrencyEnumXcdFormalName.
  ///
  /// In en, this message translates to:
  /// **'East Caribbean Dollar'**
  String get myoroCurrencyEnumXcdFormalName;

  /// No description provided for @myoroCurrencyEnumBsdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bahamian Dollar'**
  String get myoroCurrencyEnumBsdFormalName;

  /// No description provided for @myoroCurrencyEnumTtdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Trinidad and Tobago Dollar'**
  String get myoroCurrencyEnumTtdFormalName;

  /// No description provided for @myoroCurrencyEnumGydFormalName.
  ///
  /// In en, this message translates to:
  /// **'Guyanese Dollar'**
  String get myoroCurrencyEnumGydFormalName;

  /// No description provided for @myoroCurrencyEnumSrdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Surinamese Dollar'**
  String get myoroCurrencyEnumSrdFormalName;

  /// No description provided for @myoroCurrencyEnumIlsFormalName.
  ///
  /// In en, this message translates to:
  /// **'Israeli New Shekel'**
  String get myoroCurrencyEnumIlsFormalName;

  /// No description provided for @myoroCurrencyEnumJodFormalName.
  ///
  /// In en, this message translates to:
  /// **'Jordanian Dinar'**
  String get myoroCurrencyEnumJodFormalName;

  /// No description provided for @myoroCurrencyEnumLbpFormalName.
  ///
  /// In en, this message translates to:
  /// **'Lebanese Pound'**
  String get myoroCurrencyEnumLbpFormalName;

  /// No description provided for @myoroCurrencyEnumSypFormalName.
  ///
  /// In en, this message translates to:
  /// **'Syrian Pound'**
  String get myoroCurrencyEnumSypFormalName;

  /// No description provided for @myoroCurrencyEnumIqdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Iraqi Dinar'**
  String get myoroCurrencyEnumIqdFormalName;

  /// No description provided for @myoroCurrencyEnumIrrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Iranian Rial'**
  String get myoroCurrencyEnumIrrFormalName;

  /// No description provided for @myoroCurrencyEnumSarFormalName.
  ///
  /// In en, this message translates to:
  /// **'Saudi Riyal'**
  String get myoroCurrencyEnumSarFormalName;

  /// No description provided for @myoroCurrencyEnumAedFormalName.
  ///
  /// In en, this message translates to:
  /// **'United Arab Emirates Dirham'**
  String get myoroCurrencyEnumAedFormalName;

  /// No description provided for @myoroCurrencyEnumQarFormalName.
  ///
  /// In en, this message translates to:
  /// **'Qatari Riyal'**
  String get myoroCurrencyEnumQarFormalName;

  /// No description provided for @myoroCurrencyEnumKwdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Kuwaiti Dinar'**
  String get myoroCurrencyEnumKwdFormalName;

  /// No description provided for @myoroCurrencyEnumBhdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bahraini Dinar'**
  String get myoroCurrencyEnumBhdFormalName;

  /// No description provided for @myoroCurrencyEnumOmrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Omani Rial'**
  String get myoroCurrencyEnumOmrFormalName;

  /// No description provided for @myoroCurrencyEnumYerFormalName.
  ///
  /// In en, this message translates to:
  /// **'Yemeni Rial'**
  String get myoroCurrencyEnumYerFormalName;

  /// No description provided for @myoroCurrencyEnumAfnFormalName.
  ///
  /// In en, this message translates to:
  /// **'Afghan Afghani'**
  String get myoroCurrencyEnumAfnFormalName;

  /// No description provided for @myoroCurrencyEnumPkrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Pakistani Rupee'**
  String get myoroCurrencyEnumPkrFormalName;

  /// No description provided for @myoroCurrencyEnumBdtFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bangladeshi Taka'**
  String get myoroCurrencyEnumBdtFormalName;

  /// No description provided for @myoroCurrencyEnumLkrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Sri Lankan Rupee'**
  String get myoroCurrencyEnumLkrFormalName;

  /// No description provided for @myoroCurrencyEnumNprFormalName.
  ///
  /// In en, this message translates to:
  /// **'Nepalese Rupee'**
  String get myoroCurrencyEnumNprFormalName;

  /// No description provided for @myoroCurrencyEnumBtnFormalName.
  ///
  /// In en, this message translates to:
  /// **'Bhutanese Ngultrum'**
  String get myoroCurrencyEnumBtnFormalName;

  /// No description provided for @myoroCurrencyEnumMvrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Maldivian Rufiyaa'**
  String get myoroCurrencyEnumMvrFormalName;

  /// No description provided for @myoroCurrencyEnumMmkFormalName.
  ///
  /// In en, this message translates to:
  /// **'Myanmar Kyat'**
  String get myoroCurrencyEnumMmkFormalName;

  /// No description provided for @myoroCurrencyEnumThbFormalName.
  ///
  /// In en, this message translates to:
  /// **'Thai Baht'**
  String get myoroCurrencyEnumThbFormalName;

  /// No description provided for @myoroCurrencyEnumKhrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Cambodian Riel'**
  String get myoroCurrencyEnumKhrFormalName;

  /// No description provided for @myoroCurrencyEnumLakFormalName.
  ///
  /// In en, this message translates to:
  /// **'Lao Kip'**
  String get myoroCurrencyEnumLakFormalName;

  /// No description provided for @myoroCurrencyEnumVndFormalName.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese Dong'**
  String get myoroCurrencyEnumVndFormalName;

  /// No description provided for @myoroCurrencyEnumIdrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Indonesian Rupiah'**
  String get myoroCurrencyEnumIdrFormalName;

  /// No description provided for @myoroCurrencyEnumMyrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Malaysian Ringgit'**
  String get myoroCurrencyEnumMyrFormalName;

  /// No description provided for @myoroCurrencyEnumSgdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Singapore Dollar'**
  String get myoroCurrencyEnumSgdFormalName;

  /// No description provided for @myoroCurrencyEnumBndFormalName.
  ///
  /// In en, this message translates to:
  /// **'Brunei Dollar'**
  String get myoroCurrencyEnumBndFormalName;

  /// No description provided for @myoroCurrencyEnumPhpFormalName.
  ///
  /// In en, this message translates to:
  /// **'Philippine Peso'**
  String get myoroCurrencyEnumPhpFormalName;

  /// No description provided for @myoroCurrencyEnumKrwFormalName.
  ///
  /// In en, this message translates to:
  /// **'South Korean Won'**
  String get myoroCurrencyEnumKrwFormalName;

  /// No description provided for @myoroCurrencyEnumKpwFormalName.
  ///
  /// In en, this message translates to:
  /// **'North Korean Won'**
  String get myoroCurrencyEnumKpwFormalName;

  /// No description provided for @myoroCurrencyEnumMntFormalName.
  ///
  /// In en, this message translates to:
  /// **'Mongolian Tugrik'**
  String get myoroCurrencyEnumMntFormalName;

  /// No description provided for @myoroCurrencyEnumKztFormalName.
  ///
  /// In en, this message translates to:
  /// **'Kazakhstani Tenge'**
  String get myoroCurrencyEnumKztFormalName;

  /// No description provided for @myoroCurrencyEnumKgsFormalName.
  ///
  /// In en, this message translates to:
  /// **'Kyrgyzstani Som'**
  String get myoroCurrencyEnumKgsFormalName;

  /// No description provided for @myoroCurrencyEnumTjsFormalName.
  ///
  /// In en, this message translates to:
  /// **'Tajikistani Somoni'**
  String get myoroCurrencyEnumTjsFormalName;

  /// No description provided for @myoroCurrencyEnumTmtFormalName.
  ///
  /// In en, this message translates to:
  /// **'Turkmenistani Manat'**
  String get myoroCurrencyEnumTmtFormalName;

  /// No description provided for @myoroCurrencyEnumUzsFormalName.
  ///
  /// In en, this message translates to:
  /// **'Uzbekistani Som'**
  String get myoroCurrencyEnumUzsFormalName;

  /// No description provided for @myoroCurrencyEnumRubFormalName.
  ///
  /// In en, this message translates to:
  /// **'Russian Ruble'**
  String get myoroCurrencyEnumRubFormalName;

  /// No description provided for @myoroCurrencyEnumBynFormalName.
  ///
  /// In en, this message translates to:
  /// **'Belarusian Ruble'**
  String get myoroCurrencyEnumBynFormalName;

  /// No description provided for @myoroCurrencyEnumUahFormalName.
  ///
  /// In en, this message translates to:
  /// **'Ukrainian Hryvnia'**
  String get myoroCurrencyEnumUahFormalName;

  /// No description provided for @myoroCurrencyEnumMdlFormalName.
  ///
  /// In en, this message translates to:
  /// **'Moldovan Leu'**
  String get myoroCurrencyEnumMdlFormalName;

  /// No description provided for @myoroCurrencyEnumGelFormalName.
  ///
  /// In en, this message translates to:
  /// **'Georgian Lari'**
  String get myoroCurrencyEnumGelFormalName;

  /// No description provided for @myoroCurrencyEnumAmdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Armenian Dram'**
  String get myoroCurrencyEnumAmdFormalName;

  /// No description provided for @myoroCurrencyEnumAznFormalName.
  ///
  /// In en, this message translates to:
  /// **'Azerbaijani Manat'**
  String get myoroCurrencyEnumAznFormalName;

  /// No description provided for @myoroCurrencyEnumTryFormalName.
  ///
  /// In en, this message translates to:
  /// **'Turkish Lira'**
  String get myoroCurrencyEnumTryFormalName;

  /// No description provided for @myoroCurrencyEnumEgpFormalName.
  ///
  /// In en, this message translates to:
  /// **'Egyptian Pound'**
  String get myoroCurrencyEnumEgpFormalName;

  /// No description provided for @myoroCurrencyEnumSdpFormalName.
  ///
  /// In en, this message translates to:
  /// **'Sudanese Pound'**
  String get myoroCurrencyEnumSdpFormalName;

  /// No description provided for @myoroCurrencyEnumSspFormalName.
  ///
  /// In en, this message translates to:
  /// **'South Sudanese Pound'**
  String get myoroCurrencyEnumSspFormalName;

  /// No description provided for @myoroCurrencyEnumEtbFormalName.
  ///
  /// In en, this message translates to:
  /// **'Ethiopian Birr'**
  String get myoroCurrencyEnumEtbFormalName;

  /// No description provided for @myoroCurrencyEnumErnFormalName.
  ///
  /// In en, this message translates to:
  /// **'Eritrean Nakfa'**
  String get myoroCurrencyEnumErnFormalName;

  /// No description provided for @myoroCurrencyEnumDjfFormalName.
  ///
  /// In en, this message translates to:
  /// **'Djiboutian Franc'**
  String get myoroCurrencyEnumDjfFormalName;

  /// No description provided for @myoroCurrencyEnumSosFormalName.
  ///
  /// In en, this message translates to:
  /// **'Somali Shilling'**
  String get myoroCurrencyEnumSosFormalName;

  /// No description provided for @myoroCurrencyEnumKesFormalName.
  ///
  /// In en, this message translates to:
  /// **'Kenyan Shilling'**
  String get myoroCurrencyEnumKesFormalName;

  /// No description provided for @myoroCurrencyEnumUgxFormalName.
  ///
  /// In en, this message translates to:
  /// **'Ugandan Shilling'**
  String get myoroCurrencyEnumUgxFormalName;

  /// No description provided for @myoroCurrencyEnumTzsFormalName.
  ///
  /// In en, this message translates to:
  /// **'Tanzanian Shilling'**
  String get myoroCurrencyEnumTzsFormalName;

  /// No description provided for @myoroCurrencyEnumRwfFormalName.
  ///
  /// In en, this message translates to:
  /// **'Rwandan Franc'**
  String get myoroCurrencyEnumRwfFormalName;

  /// No description provided for @myoroCurrencyEnumBifFormalName.
  ///
  /// In en, this message translates to:
  /// **'Burundian Franc'**
  String get myoroCurrencyEnumBifFormalName;

  /// No description provided for @myoroCurrencyEnumCdfFormalName.
  ///
  /// In en, this message translates to:
  /// **'Congolese Franc'**
  String get myoroCurrencyEnumCdfFormalName;

  /// No description provided for @myoroCurrencyEnumXafFormalName.
  ///
  /// In en, this message translates to:
  /// **'Central African CFA Franc'**
  String get myoroCurrencyEnumXafFormalName;

  /// No description provided for @myoroCurrencyEnumXofFormalName.
  ///
  /// In en, this message translates to:
  /// **'West African CFA Franc'**
  String get myoroCurrencyEnumXofFormalName;

  /// No description provided for @myoroCurrencyEnumGhsFormalName.
  ///
  /// In en, this message translates to:
  /// **'Ghanaian Cedi'**
  String get myoroCurrencyEnumGhsFormalName;

  /// No description provided for @myoroCurrencyEnumNgnFormalName.
  ///
  /// In en, this message translates to:
  /// **'Nigerian Naira'**
  String get myoroCurrencyEnumNgnFormalName;

  /// No description provided for @myoroCurrencyEnumGmdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Gambian Dalasi'**
  String get myoroCurrencyEnumGmdFormalName;

  /// No description provided for @myoroCurrencyEnumGnfFormalName.
  ///
  /// In en, this message translates to:
  /// **'Guinean Franc'**
  String get myoroCurrencyEnumGnfFormalName;

  /// No description provided for @myoroCurrencyEnumSllFormalName.
  ///
  /// In en, this message translates to:
  /// **'Sierra Leonean Leone'**
  String get myoroCurrencyEnumSllFormalName;

  /// No description provided for @myoroCurrencyEnumLrdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Liberian Dollar'**
  String get myoroCurrencyEnumLrdFormalName;

  /// No description provided for @myoroCurrencyEnumCveFormalName.
  ///
  /// In en, this message translates to:
  /// **'Cape Verdean Escudo'**
  String get myoroCurrencyEnumCveFormalName;

  /// No description provided for @myoroCurrencyEnumMruFormalName.
  ///
  /// In en, this message translates to:
  /// **'Mauritanian Ouguiya'**
  String get myoroCurrencyEnumMruFormalName;

  /// No description provided for @myoroCurrencyEnumZarFormalName.
  ///
  /// In en, this message translates to:
  /// **'South African Rand'**
  String get myoroCurrencyEnumZarFormalName;

  /// No description provided for @myoroCurrencyEnumNadFormalName.
  ///
  /// In en, this message translates to:
  /// **'Namibian Dollar'**
  String get myoroCurrencyEnumNadFormalName;

  /// No description provided for @myoroCurrencyEnumBwpFormalName.
  ///
  /// In en, this message translates to:
  /// **'Botswanan Pula'**
  String get myoroCurrencyEnumBwpFormalName;

  /// No description provided for @myoroCurrencyEnumLslFormalName.
  ///
  /// In en, this message translates to:
  /// **'Lesotho Loti'**
  String get myoroCurrencyEnumLslFormalName;

  /// No description provided for @myoroCurrencyEnumSzlFormalName.
  ///
  /// In en, this message translates to:
  /// **'Swazi Lilangeni'**
  String get myoroCurrencyEnumSzlFormalName;

  /// No description provided for @myoroCurrencyEnumZmwFormalName.
  ///
  /// In en, this message translates to:
  /// **'Zambian Kwacha'**
  String get myoroCurrencyEnumZmwFormalName;

  /// No description provided for @myoroCurrencyEnumMwkFormalName.
  ///
  /// In en, this message translates to:
  /// **'Malawian Kwacha'**
  String get myoroCurrencyEnumMwkFormalName;

  /// No description provided for @myoroCurrencyEnumMznFormalName.
  ///
  /// In en, this message translates to:
  /// **'Mozambican Metical'**
  String get myoroCurrencyEnumMznFormalName;

  /// No description provided for @myoroCurrencyEnumMgaFormalName.
  ///
  /// In en, this message translates to:
  /// **'Malagasy Ariary'**
  String get myoroCurrencyEnumMgaFormalName;

  /// No description provided for @myoroCurrencyEnumKmfFormalName.
  ///
  /// In en, this message translates to:
  /// **'Comorian Franc'**
  String get myoroCurrencyEnumKmfFormalName;

  /// No description provided for @myoroCurrencyEnumScrFormalName.
  ///
  /// In en, this message translates to:
  /// **'Seychellois Rupee'**
  String get myoroCurrencyEnumScrFormalName;

  /// No description provided for @myoroCurrencyEnumMurFormalName.
  ///
  /// In en, this message translates to:
  /// **'Mauritian Rupee'**
  String get myoroCurrencyEnumMurFormalName;

  /// No description provided for @myoroCurrencyEnumAoaFormalName.
  ///
  /// In en, this message translates to:
  /// **'Angolan Kwanza'**
  String get myoroCurrencyEnumAoaFormalName;

  /// No description provided for @myoroCurrencyEnumLydFormalName.
  ///
  /// In en, this message translates to:
  /// **'Libyan Dinar'**
  String get myoroCurrencyEnumLydFormalName;

  /// No description provided for @myoroCurrencyEnumTndFormalName.
  ///
  /// In en, this message translates to:
  /// **'Tunisian Dinar'**
  String get myoroCurrencyEnumTndFormalName;

  /// No description provided for @myoroCurrencyEnumDzdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Algerian Dinar'**
  String get myoroCurrencyEnumDzdFormalName;

  /// No description provided for @myoroCurrencyEnumMadFormalName.
  ///
  /// In en, this message translates to:
  /// **'Moroccan Dirham'**
  String get myoroCurrencyEnumMadFormalName;

  /// No description provided for @myoroCurrencyEnumNzdFormalName.
  ///
  /// In en, this message translates to:
  /// **'New Zealand Dollar'**
  String get myoroCurrencyEnumNzdFormalName;

  /// No description provided for @myoroCurrencyEnumFjdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Fijian Dollar'**
  String get myoroCurrencyEnumFjdFormalName;

  /// No description provided for @myoroCurrencyEnumPgkFormalName.
  ///
  /// In en, this message translates to:
  /// **'Papua New Guinean Kina'**
  String get myoroCurrencyEnumPgkFormalName;

  /// No description provided for @myoroCurrencyEnumSbdFormalName.
  ///
  /// In en, this message translates to:
  /// **'Solomon Islands Dollar'**
  String get myoroCurrencyEnumSbdFormalName;

  /// No description provided for @myoroCurrencyEnumVuvFormalName.
  ///
  /// In en, this message translates to:
  /// **'Vanuatu Vatu'**
  String get myoroCurrencyEnumVuvFormalName;

  /// No description provided for @myoroCurrencyEnumXpfFormalName.
  ///
  /// In en, this message translates to:
  /// **'CFP Franc'**
  String get myoroCurrencyEnumXpfFormalName;

  /// No description provided for @myoroCurrencyEnumWstFormalName.
  ///
  /// In en, this message translates to:
  /// **'Samoan Tala'**
  String get myoroCurrencyEnumWstFormalName;

  /// No description provided for @myoroCurrencyEnumTopFormalName.
  ///
  /// In en, this message translates to:
  /// **'Tongan Paʻanga'**
  String get myoroCurrencyEnumTopFormalName;

  /// No description provided for @myoroCurrencyEnumIskFormalName.
  ///
  /// In en, this message translates to:
  /// **'Icelandic Króna'**
  String get myoroCurrencyEnumIskFormalName;

  /// No description provided for @myoroCurrencyEnumStnFormalName.
  ///
  /// In en, this message translates to:
  /// **'São Tomé and Príncipe Dobra'**
  String get myoroCurrencyEnumStnFormalName;

  /// No description provided for @myoroCurrencyEnumTwdFormalName.
  ///
  /// In en, this message translates to:
  /// **'New Taiwan Dollar'**
  String get myoroCurrencyEnumTwdFormalName;

  /// No description provided for @myoroCountryEnumAfghanistanLabel.
  ///
  /// In en, this message translates to:
  /// **'Afghanistan'**
  String get myoroCountryEnumAfghanistanLabel;

  /// No description provided for @myoroCountryEnumAlbaniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Albania'**
  String get myoroCountryEnumAlbaniaLabel;

  /// No description provided for @myoroCountryEnumAlgeriaLabel.
  ///
  /// In en, this message translates to:
  /// **'Algeria'**
  String get myoroCountryEnumAlgeriaLabel;

  /// No description provided for @myoroCountryEnumAndorraLabel.
  ///
  /// In en, this message translates to:
  /// **'Andorra'**
  String get myoroCountryEnumAndorraLabel;

  /// No description provided for @myoroCountryEnumAngolaLabel.
  ///
  /// In en, this message translates to:
  /// **'Angola'**
  String get myoroCountryEnumAngolaLabel;

  /// No description provided for @myoroCountryEnumAntiguaAndBarbudaLabel.
  ///
  /// In en, this message translates to:
  /// **'Antigua and Barbuda'**
  String get myoroCountryEnumAntiguaAndBarbudaLabel;

  /// No description provided for @myoroCountryEnumArgentinaLabel.
  ///
  /// In en, this message translates to:
  /// **'Argentina'**
  String get myoroCountryEnumArgentinaLabel;

  /// No description provided for @myoroCountryEnumArmeniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Armenia'**
  String get myoroCountryEnumArmeniaLabel;

  /// No description provided for @myoroCountryEnumAustraliaLabel.
  ///
  /// In en, this message translates to:
  /// **'Australia'**
  String get myoroCountryEnumAustraliaLabel;

  /// No description provided for @myoroCountryEnumAustriaLabel.
  ///
  /// In en, this message translates to:
  /// **'Austria'**
  String get myoroCountryEnumAustriaLabel;

  /// No description provided for @myoroCountryEnumAzerbaijanLabel.
  ///
  /// In en, this message translates to:
  /// **'Azerbaijan'**
  String get myoroCountryEnumAzerbaijanLabel;

  /// No description provided for @myoroCountryEnumBahamasLabel.
  ///
  /// In en, this message translates to:
  /// **'Bahamas'**
  String get myoroCountryEnumBahamasLabel;

  /// No description provided for @myoroCountryEnumBahrainLabel.
  ///
  /// In en, this message translates to:
  /// **'Bahrain'**
  String get myoroCountryEnumBahrainLabel;

  /// No description provided for @myoroCountryEnumBangladeshLabel.
  ///
  /// In en, this message translates to:
  /// **'Bangladesh'**
  String get myoroCountryEnumBangladeshLabel;

  /// No description provided for @myoroCountryEnumBarbadosLabel.
  ///
  /// In en, this message translates to:
  /// **'Barbados'**
  String get myoroCountryEnumBarbadosLabel;

  /// No description provided for @myoroCountryEnumBelarusLabel.
  ///
  /// In en, this message translates to:
  /// **'Belarus'**
  String get myoroCountryEnumBelarusLabel;

  /// No description provided for @myoroCountryEnumBelgiumLabel.
  ///
  /// In en, this message translates to:
  /// **'Belgium'**
  String get myoroCountryEnumBelgiumLabel;

  /// No description provided for @myoroCountryEnumBelizeLabel.
  ///
  /// In en, this message translates to:
  /// **'Belize'**
  String get myoroCountryEnumBelizeLabel;

  /// No description provided for @myoroCountryEnumBeninLabel.
  ///
  /// In en, this message translates to:
  /// **'Benin'**
  String get myoroCountryEnumBeninLabel;

  /// No description provided for @myoroCountryEnumBhutanLabel.
  ///
  /// In en, this message translates to:
  /// **'Bhutan'**
  String get myoroCountryEnumBhutanLabel;

  /// No description provided for @myoroCountryEnumBoliviaLabel.
  ///
  /// In en, this message translates to:
  /// **'Bolivia'**
  String get myoroCountryEnumBoliviaLabel;

  /// No description provided for @myoroCountryEnumBosniaAndHerzegovinaLabel.
  ///
  /// In en, this message translates to:
  /// **'Bosnia and Herzegovina'**
  String get myoroCountryEnumBosniaAndHerzegovinaLabel;

  /// No description provided for @myoroCountryEnumBotswanaLabel.
  ///
  /// In en, this message translates to:
  /// **'Botswana'**
  String get myoroCountryEnumBotswanaLabel;

  /// No description provided for @myoroCountryEnumBrazilLabel.
  ///
  /// In en, this message translates to:
  /// **'Brazil'**
  String get myoroCountryEnumBrazilLabel;

  /// No description provided for @myoroCountryEnumBruneiLabel.
  ///
  /// In en, this message translates to:
  /// **'Brunei'**
  String get myoroCountryEnumBruneiLabel;

  /// No description provided for @myoroCountryEnumBulgariaLabel.
  ///
  /// In en, this message translates to:
  /// **'Bulgaria'**
  String get myoroCountryEnumBulgariaLabel;

  /// No description provided for @myoroCountryEnumBurkinaFasoLabel.
  ///
  /// In en, this message translates to:
  /// **'Burkina Faso'**
  String get myoroCountryEnumBurkinaFasoLabel;

  /// No description provided for @myoroCountryEnumBurundiLabel.
  ///
  /// In en, this message translates to:
  /// **'Burundi'**
  String get myoroCountryEnumBurundiLabel;

  /// No description provided for @myoroCountryEnumCambodiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Cambodia'**
  String get myoroCountryEnumCambodiaLabel;

  /// No description provided for @myoroCountryEnumCameroonLabel.
  ///
  /// In en, this message translates to:
  /// **'Cameroon'**
  String get myoroCountryEnumCameroonLabel;

  /// No description provided for @myoroCountryEnumCanadaLabel.
  ///
  /// In en, this message translates to:
  /// **'Canada'**
  String get myoroCountryEnumCanadaLabel;

  /// No description provided for @myoroCountryEnumCapeVerdeLabel.
  ///
  /// In en, this message translates to:
  /// **'Cape Verde'**
  String get myoroCountryEnumCapeVerdeLabel;

  /// No description provided for @myoroCountryEnumCentralAfricanRepublicLabel.
  ///
  /// In en, this message translates to:
  /// **'Central African Republic'**
  String get myoroCountryEnumCentralAfricanRepublicLabel;

  /// No description provided for @myoroCountryEnumChadLabel.
  ///
  /// In en, this message translates to:
  /// **'Chad'**
  String get myoroCountryEnumChadLabel;

  /// No description provided for @myoroCountryEnumChileLabel.
  ///
  /// In en, this message translates to:
  /// **'Chile'**
  String get myoroCountryEnumChileLabel;

  /// No description provided for @myoroCountryEnumChinaLabel.
  ///
  /// In en, this message translates to:
  /// **'China'**
  String get myoroCountryEnumChinaLabel;

  /// No description provided for @myoroCountryEnumColombiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Colombia'**
  String get myoroCountryEnumColombiaLabel;

  /// No description provided for @myoroCountryEnumComorosLabel.
  ///
  /// In en, this message translates to:
  /// **'Comoros'**
  String get myoroCountryEnumComorosLabel;

  /// No description provided for @myoroCountryEnumCongoLabel.
  ///
  /// In en, this message translates to:
  /// **'Congo'**
  String get myoroCountryEnumCongoLabel;

  /// No description provided for @myoroCountryEnumCostaRicaLabel.
  ///
  /// In en, this message translates to:
  /// **'Costa Rica'**
  String get myoroCountryEnumCostaRicaLabel;

  /// No description provided for @myoroCountryEnumCroatiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Croatia'**
  String get myoroCountryEnumCroatiaLabel;

  /// No description provided for @myoroCountryEnumCubaLabel.
  ///
  /// In en, this message translates to:
  /// **'Cuba'**
  String get myoroCountryEnumCubaLabel;

  /// No description provided for @myoroCountryEnumCyprusLabel.
  ///
  /// In en, this message translates to:
  /// **'Cyprus'**
  String get myoroCountryEnumCyprusLabel;

  /// No description provided for @myoroCountryEnumCzechRepublicLabel.
  ///
  /// In en, this message translates to:
  /// **'Czech Republic'**
  String get myoroCountryEnumCzechRepublicLabel;

  /// No description provided for @myoroCountryEnumDenmarkLabel.
  ///
  /// In en, this message translates to:
  /// **'Denmark'**
  String get myoroCountryEnumDenmarkLabel;

  /// No description provided for @myoroCountryEnumDjiboutiLabel.
  ///
  /// In en, this message translates to:
  /// **'Djibouti'**
  String get myoroCountryEnumDjiboutiLabel;

  /// No description provided for @myoroCountryEnumDominicaLabel.
  ///
  /// In en, this message translates to:
  /// **'Dominica'**
  String get myoroCountryEnumDominicaLabel;

  /// No description provided for @myoroCountryEnumDominicanRepublicLabel.
  ///
  /// In en, this message translates to:
  /// **'Dominican Republic'**
  String get myoroCountryEnumDominicanRepublicLabel;

  /// No description provided for @myoroCountryEnumDrCongoLabel.
  ///
  /// In en, this message translates to:
  /// **'DR Congo'**
  String get myoroCountryEnumDrCongoLabel;

  /// No description provided for @myoroCountryEnumEcuadorLabel.
  ///
  /// In en, this message translates to:
  /// **'Ecuador'**
  String get myoroCountryEnumEcuadorLabel;

  /// No description provided for @myoroCountryEnumEgyptLabel.
  ///
  /// In en, this message translates to:
  /// **'Egypt'**
  String get myoroCountryEnumEgyptLabel;

  /// No description provided for @myoroCountryEnumElSalvadorLabel.
  ///
  /// In en, this message translates to:
  /// **'El Salvador'**
  String get myoroCountryEnumElSalvadorLabel;

  /// No description provided for @myoroCountryEnumEquatorialGuineaLabel.
  ///
  /// In en, this message translates to:
  /// **'Equatorial Guinea'**
  String get myoroCountryEnumEquatorialGuineaLabel;

  /// No description provided for @myoroCountryEnumEritreaLabel.
  ///
  /// In en, this message translates to:
  /// **'Eritrea'**
  String get myoroCountryEnumEritreaLabel;

  /// No description provided for @myoroCountryEnumEstoniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Estonia'**
  String get myoroCountryEnumEstoniaLabel;

  /// No description provided for @myoroCountryEnumEswatiniLabel.
  ///
  /// In en, this message translates to:
  /// **'Eswatini'**
  String get myoroCountryEnumEswatiniLabel;

  /// No description provided for @myoroCountryEnumEthiopiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Ethiopia'**
  String get myoroCountryEnumEthiopiaLabel;

  /// No description provided for @myoroCountryEnumFijiLabel.
  ///
  /// In en, this message translates to:
  /// **'Fiji'**
  String get myoroCountryEnumFijiLabel;

  /// No description provided for @myoroCountryEnumFinlandLabel.
  ///
  /// In en, this message translates to:
  /// **'Finland'**
  String get myoroCountryEnumFinlandLabel;

  /// No description provided for @myoroCountryEnumFranceLabel.
  ///
  /// In en, this message translates to:
  /// **'France'**
  String get myoroCountryEnumFranceLabel;

  /// No description provided for @myoroCountryEnumGabonLabel.
  ///
  /// In en, this message translates to:
  /// **'Gabon'**
  String get myoroCountryEnumGabonLabel;

  /// No description provided for @myoroCountryEnumGambiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Gambia'**
  String get myoroCountryEnumGambiaLabel;

  /// No description provided for @myoroCountryEnumGeorgiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Georgia'**
  String get myoroCountryEnumGeorgiaLabel;

  /// No description provided for @myoroCountryEnumGermanyLabel.
  ///
  /// In en, this message translates to:
  /// **'Germany'**
  String get myoroCountryEnumGermanyLabel;

  /// No description provided for @myoroCountryEnumGhanaLabel.
  ///
  /// In en, this message translates to:
  /// **'Ghana'**
  String get myoroCountryEnumGhanaLabel;

  /// No description provided for @myoroCountryEnumGreeceLabel.
  ///
  /// In en, this message translates to:
  /// **'Greece'**
  String get myoroCountryEnumGreeceLabel;

  /// No description provided for @myoroCountryEnumGrenadaLabel.
  ///
  /// In en, this message translates to:
  /// **'Grenada'**
  String get myoroCountryEnumGrenadaLabel;

  /// No description provided for @myoroCountryEnumGuatemalaLabel.
  ///
  /// In en, this message translates to:
  /// **'Guatemala'**
  String get myoroCountryEnumGuatemalaLabel;

  /// No description provided for @myoroCountryEnumGuineaLabel.
  ///
  /// In en, this message translates to:
  /// **'Guinea'**
  String get myoroCountryEnumGuineaLabel;

  /// No description provided for @myoroCountryEnumGuineaBissauLabel.
  ///
  /// In en, this message translates to:
  /// **'Guinea-Bissau'**
  String get myoroCountryEnumGuineaBissauLabel;

  /// No description provided for @myoroCountryEnumGuyanaLabel.
  ///
  /// In en, this message translates to:
  /// **'Guyana'**
  String get myoroCountryEnumGuyanaLabel;

  /// No description provided for @myoroCountryEnumHaitiLabel.
  ///
  /// In en, this message translates to:
  /// **'Haiti'**
  String get myoroCountryEnumHaitiLabel;

  /// No description provided for @myoroCountryEnumHondurasLabel.
  ///
  /// In en, this message translates to:
  /// **'Honduras'**
  String get myoroCountryEnumHondurasLabel;

  /// No description provided for @myoroCountryEnumHungaryLabel.
  ///
  /// In en, this message translates to:
  /// **'Hungary'**
  String get myoroCountryEnumHungaryLabel;

  /// No description provided for @myoroCountryEnumIcelandLabel.
  ///
  /// In en, this message translates to:
  /// **'Iceland'**
  String get myoroCountryEnumIcelandLabel;

  /// No description provided for @myoroCountryEnumIndiaLabel.
  ///
  /// In en, this message translates to:
  /// **'India'**
  String get myoroCountryEnumIndiaLabel;

  /// No description provided for @myoroCountryEnumIndonesiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Indonesia'**
  String get myoroCountryEnumIndonesiaLabel;

  /// No description provided for @myoroCountryEnumIranLabel.
  ///
  /// In en, this message translates to:
  /// **'Iran'**
  String get myoroCountryEnumIranLabel;

  /// No description provided for @myoroCountryEnumIraqLabel.
  ///
  /// In en, this message translates to:
  /// **'Iraq'**
  String get myoroCountryEnumIraqLabel;

  /// No description provided for @myoroCountryEnumIrelandLabel.
  ///
  /// In en, this message translates to:
  /// **'Ireland'**
  String get myoroCountryEnumIrelandLabel;

  /// No description provided for @myoroCountryEnumIsraelLabel.
  ///
  /// In en, this message translates to:
  /// **'Israel'**
  String get myoroCountryEnumIsraelLabel;

  /// No description provided for @myoroCountryEnumItalyLabel.
  ///
  /// In en, this message translates to:
  /// **'Italy'**
  String get myoroCountryEnumItalyLabel;

  /// No description provided for @myoroCountryEnumIvoryCoastLabel.
  ///
  /// In en, this message translates to:
  /// **'Ivory Coast'**
  String get myoroCountryEnumIvoryCoastLabel;

  /// No description provided for @myoroCountryEnumJamaicaLabel.
  ///
  /// In en, this message translates to:
  /// **'Jamaica'**
  String get myoroCountryEnumJamaicaLabel;

  /// No description provided for @myoroCountryEnumJapanLabel.
  ///
  /// In en, this message translates to:
  /// **'Japan'**
  String get myoroCountryEnumJapanLabel;

  /// No description provided for @myoroCountryEnumJordanLabel.
  ///
  /// In en, this message translates to:
  /// **'Jordan'**
  String get myoroCountryEnumJordanLabel;

  /// No description provided for @myoroCountryEnumKazakhstanLabel.
  ///
  /// In en, this message translates to:
  /// **'Kazakhstan'**
  String get myoroCountryEnumKazakhstanLabel;

  /// No description provided for @myoroCountryEnumKenyaLabel.
  ///
  /// In en, this message translates to:
  /// **'Kenya'**
  String get myoroCountryEnumKenyaLabel;

  /// No description provided for @myoroCountryEnumKiribatiLabel.
  ///
  /// In en, this message translates to:
  /// **'Kiribati'**
  String get myoroCountryEnumKiribatiLabel;

  /// No description provided for @myoroCountryEnumKosovoLabel.
  ///
  /// In en, this message translates to:
  /// **'Kosovo'**
  String get myoroCountryEnumKosovoLabel;

  /// No description provided for @myoroCountryEnumKuwaitLabel.
  ///
  /// In en, this message translates to:
  /// **'Kuwait'**
  String get myoroCountryEnumKuwaitLabel;

  /// No description provided for @myoroCountryEnumKyrgyzstanLabel.
  ///
  /// In en, this message translates to:
  /// **'Kyrgyzstan'**
  String get myoroCountryEnumKyrgyzstanLabel;

  /// No description provided for @myoroCountryEnumLaosLabel.
  ///
  /// In en, this message translates to:
  /// **'Laos'**
  String get myoroCountryEnumLaosLabel;

  /// No description provided for @myoroCountryEnumLatviaLabel.
  ///
  /// In en, this message translates to:
  /// **'Latvia'**
  String get myoroCountryEnumLatviaLabel;

  /// No description provided for @myoroCountryEnumLebanonLabel.
  ///
  /// In en, this message translates to:
  /// **'Lebanon'**
  String get myoroCountryEnumLebanonLabel;

  /// No description provided for @myoroCountryEnumLesothoLabel.
  ///
  /// In en, this message translates to:
  /// **'Lesotho'**
  String get myoroCountryEnumLesothoLabel;

  /// No description provided for @myoroCountryEnumLiberiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Liberia'**
  String get myoroCountryEnumLiberiaLabel;

  /// No description provided for @myoroCountryEnumLibyaLabel.
  ///
  /// In en, this message translates to:
  /// **'Libya'**
  String get myoroCountryEnumLibyaLabel;

  /// No description provided for @myoroCountryEnumLiechtensteinLabel.
  ///
  /// In en, this message translates to:
  /// **'Liechtenstein'**
  String get myoroCountryEnumLiechtensteinLabel;

  /// No description provided for @myoroCountryEnumLithuaniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Lithuania'**
  String get myoroCountryEnumLithuaniaLabel;

  /// No description provided for @myoroCountryEnumLuxembourgLabel.
  ///
  /// In en, this message translates to:
  /// **'Luxembourg'**
  String get myoroCountryEnumLuxembourgLabel;

  /// No description provided for @myoroCountryEnumMadagascarLabel.
  ///
  /// In en, this message translates to:
  /// **'Madagascar'**
  String get myoroCountryEnumMadagascarLabel;

  /// No description provided for @myoroCountryEnumMalawiLabel.
  ///
  /// In en, this message translates to:
  /// **'Malawi'**
  String get myoroCountryEnumMalawiLabel;

  /// No description provided for @myoroCountryEnumMalaysiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Malaysia'**
  String get myoroCountryEnumMalaysiaLabel;

  /// No description provided for @myoroCountryEnumMaldivesLabel.
  ///
  /// In en, this message translates to:
  /// **'Maldives'**
  String get myoroCountryEnumMaldivesLabel;

  /// No description provided for @myoroCountryEnumMaliLabel.
  ///
  /// In en, this message translates to:
  /// **'Mali'**
  String get myoroCountryEnumMaliLabel;

  /// No description provided for @myoroCountryEnumMaltaLabel.
  ///
  /// In en, this message translates to:
  /// **'Malta'**
  String get myoroCountryEnumMaltaLabel;

  /// No description provided for @myoroCountryEnumMarshallIslandsLabel.
  ///
  /// In en, this message translates to:
  /// **'Marshall Islands'**
  String get myoroCountryEnumMarshallIslandsLabel;

  /// No description provided for @myoroCountryEnumMauritaniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Mauritania'**
  String get myoroCountryEnumMauritaniaLabel;

  /// No description provided for @myoroCountryEnumMauritiusLabel.
  ///
  /// In en, this message translates to:
  /// **'Mauritius'**
  String get myoroCountryEnumMauritiusLabel;

  /// No description provided for @myoroCountryEnumMexicoLabel.
  ///
  /// In en, this message translates to:
  /// **'Mexico'**
  String get myoroCountryEnumMexicoLabel;

  /// No description provided for @myoroCountryEnumMicronesiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Micronesia'**
  String get myoroCountryEnumMicronesiaLabel;

  /// No description provided for @myoroCountryEnumMoldovaLabel.
  ///
  /// In en, this message translates to:
  /// **'Moldova'**
  String get myoroCountryEnumMoldovaLabel;

  /// No description provided for @myoroCountryEnumMonacoLabel.
  ///
  /// In en, this message translates to:
  /// **'Monaco'**
  String get myoroCountryEnumMonacoLabel;

  /// No description provided for @myoroCountryEnumMongoliaLabel.
  ///
  /// In en, this message translates to:
  /// **'Mongolia'**
  String get myoroCountryEnumMongoliaLabel;

  /// No description provided for @myoroCountryEnumMontenegroLabel.
  ///
  /// In en, this message translates to:
  /// **'Montenegro'**
  String get myoroCountryEnumMontenegroLabel;

  /// No description provided for @myoroCountryEnumMoroccoLabel.
  ///
  /// In en, this message translates to:
  /// **'Morocco'**
  String get myoroCountryEnumMoroccoLabel;

  /// No description provided for @myoroCountryEnumMozambiqueLabel.
  ///
  /// In en, this message translates to:
  /// **'Mozambique'**
  String get myoroCountryEnumMozambiqueLabel;

  /// No description provided for @myoroCountryEnumMyanmarLabel.
  ///
  /// In en, this message translates to:
  /// **'Myanmar'**
  String get myoroCountryEnumMyanmarLabel;

  /// No description provided for @myoroCountryEnumNamibiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Namibia'**
  String get myoroCountryEnumNamibiaLabel;

  /// No description provided for @myoroCountryEnumNauruLabel.
  ///
  /// In en, this message translates to:
  /// **'Nauru'**
  String get myoroCountryEnumNauruLabel;

  /// No description provided for @myoroCountryEnumNepalLabel.
  ///
  /// In en, this message translates to:
  /// **'Nepal'**
  String get myoroCountryEnumNepalLabel;

  /// No description provided for @myoroCountryEnumNetherlandsLabel.
  ///
  /// In en, this message translates to:
  /// **'Netherlands'**
  String get myoroCountryEnumNetherlandsLabel;

  /// No description provided for @myoroCountryEnumNewZealandLabel.
  ///
  /// In en, this message translates to:
  /// **'New Zealand'**
  String get myoroCountryEnumNewZealandLabel;

  /// No description provided for @myoroCountryEnumNicaraguaLabel.
  ///
  /// In en, this message translates to:
  /// **'Nicaragua'**
  String get myoroCountryEnumNicaraguaLabel;

  /// No description provided for @myoroCountryEnumNigerLabel.
  ///
  /// In en, this message translates to:
  /// **'Niger'**
  String get myoroCountryEnumNigerLabel;

  /// No description provided for @myoroCountryEnumNigeriaLabel.
  ///
  /// In en, this message translates to:
  /// **'Nigeria'**
  String get myoroCountryEnumNigeriaLabel;

  /// No description provided for @myoroCountryEnumNorthKoreaLabel.
  ///
  /// In en, this message translates to:
  /// **'North Korea'**
  String get myoroCountryEnumNorthKoreaLabel;

  /// No description provided for @myoroCountryEnumNorthMacedoniaLabel.
  ///
  /// In en, this message translates to:
  /// **'North Macedonia'**
  String get myoroCountryEnumNorthMacedoniaLabel;

  /// No description provided for @myoroCountryEnumNorwayLabel.
  ///
  /// In en, this message translates to:
  /// **'Norway'**
  String get myoroCountryEnumNorwayLabel;

  /// No description provided for @myoroCountryEnumOmanLabel.
  ///
  /// In en, this message translates to:
  /// **'Oman'**
  String get myoroCountryEnumOmanLabel;

  /// No description provided for @myoroCountryEnumPakistanLabel.
  ///
  /// In en, this message translates to:
  /// **'Pakistan'**
  String get myoroCountryEnumPakistanLabel;

  /// No description provided for @myoroCountryEnumPalauLabel.
  ///
  /// In en, this message translates to:
  /// **'Palau'**
  String get myoroCountryEnumPalauLabel;

  /// No description provided for @myoroCountryEnumPalestineLabel.
  ///
  /// In en, this message translates to:
  /// **'Palestine'**
  String get myoroCountryEnumPalestineLabel;

  /// No description provided for @myoroCountryEnumPanamaLabel.
  ///
  /// In en, this message translates to:
  /// **'Panama'**
  String get myoroCountryEnumPanamaLabel;

  /// No description provided for @myoroCountryEnumPapuaNewGuineaLabel.
  ///
  /// In en, this message translates to:
  /// **'Papua New Guinea'**
  String get myoroCountryEnumPapuaNewGuineaLabel;

  /// No description provided for @myoroCountryEnumParaguayLabel.
  ///
  /// In en, this message translates to:
  /// **'Paraguay'**
  String get myoroCountryEnumParaguayLabel;

  /// No description provided for @myoroCountryEnumPeruLabel.
  ///
  /// In en, this message translates to:
  /// **'Peru'**
  String get myoroCountryEnumPeruLabel;

  /// No description provided for @myoroCountryEnumPhilippinesLabel.
  ///
  /// In en, this message translates to:
  /// **'Philippines'**
  String get myoroCountryEnumPhilippinesLabel;

  /// No description provided for @myoroCountryEnumPolandLabel.
  ///
  /// In en, this message translates to:
  /// **'Poland'**
  String get myoroCountryEnumPolandLabel;

  /// No description provided for @myoroCountryEnumPortugalLabel.
  ///
  /// In en, this message translates to:
  /// **'Portugal'**
  String get myoroCountryEnumPortugalLabel;

  /// No description provided for @myoroCountryEnumQatarLabel.
  ///
  /// In en, this message translates to:
  /// **'Qatar'**
  String get myoroCountryEnumQatarLabel;

  /// No description provided for @myoroCountryEnumRomaniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Romania'**
  String get myoroCountryEnumRomaniaLabel;

  /// No description provided for @myoroCountryEnumRussiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Russia'**
  String get myoroCountryEnumRussiaLabel;

  /// No description provided for @myoroCountryEnumRwandaLabel.
  ///
  /// In en, this message translates to:
  /// **'Rwanda'**
  String get myoroCountryEnumRwandaLabel;

  /// No description provided for @myoroCountryEnumSaintKittsAndNevisLabel.
  ///
  /// In en, this message translates to:
  /// **'Saint Kitts and Nevis'**
  String get myoroCountryEnumSaintKittsAndNevisLabel;

  /// No description provided for @myoroCountryEnumSaintLuciaLabel.
  ///
  /// In en, this message translates to:
  /// **'Saint Lucia'**
  String get myoroCountryEnumSaintLuciaLabel;

  /// No description provided for @myoroCountryEnumSaintVincentAndTheGrenadinesLabel.
  ///
  /// In en, this message translates to:
  /// **'Saint Vincent and the Grenadines'**
  String get myoroCountryEnumSaintVincentAndTheGrenadinesLabel;

  /// No description provided for @myoroCountryEnumSamoaLabel.
  ///
  /// In en, this message translates to:
  /// **'Samoa'**
  String get myoroCountryEnumSamoaLabel;

  /// No description provided for @myoroCountryEnumSanMarinoLabel.
  ///
  /// In en, this message translates to:
  /// **'San Marino'**
  String get myoroCountryEnumSanMarinoLabel;

  /// No description provided for @myoroCountryEnumSaoTomeAndPrincipeLabel.
  ///
  /// In en, this message translates to:
  /// **'São Tomé and Príncipe'**
  String get myoroCountryEnumSaoTomeAndPrincipeLabel;

  /// No description provided for @myoroCountryEnumSaudiArabiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Saudi Arabia'**
  String get myoroCountryEnumSaudiArabiaLabel;

  /// No description provided for @myoroCountryEnumSenegalLabel.
  ///
  /// In en, this message translates to:
  /// **'Senegal'**
  String get myoroCountryEnumSenegalLabel;

  /// No description provided for @myoroCountryEnumSerbiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Serbia'**
  String get myoroCountryEnumSerbiaLabel;

  /// No description provided for @myoroCountryEnumSeychellesLabel.
  ///
  /// In en, this message translates to:
  /// **'Seychelles'**
  String get myoroCountryEnumSeychellesLabel;

  /// No description provided for @myoroCountryEnumSierraLeoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Sierra Leone'**
  String get myoroCountryEnumSierraLeoneLabel;

  /// No description provided for @myoroCountryEnumSingaporeLabel.
  ///
  /// In en, this message translates to:
  /// **'Singapore'**
  String get myoroCountryEnumSingaporeLabel;

  /// No description provided for @myoroCountryEnumSlovakiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Slovakia'**
  String get myoroCountryEnumSlovakiaLabel;

  /// No description provided for @myoroCountryEnumSloveniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Slovenia'**
  String get myoroCountryEnumSloveniaLabel;

  /// No description provided for @myoroCountryEnumSolomonIslandsLabel.
  ///
  /// In en, this message translates to:
  /// **'Solomon Islands'**
  String get myoroCountryEnumSolomonIslandsLabel;

  /// No description provided for @myoroCountryEnumSomaliaLabel.
  ///
  /// In en, this message translates to:
  /// **'Somalia'**
  String get myoroCountryEnumSomaliaLabel;

  /// No description provided for @myoroCountryEnumSouthAfricaLabel.
  ///
  /// In en, this message translates to:
  /// **'South Africa'**
  String get myoroCountryEnumSouthAfricaLabel;

  /// No description provided for @myoroCountryEnumSouthKoreaLabel.
  ///
  /// In en, this message translates to:
  /// **'South Korea'**
  String get myoroCountryEnumSouthKoreaLabel;

  /// No description provided for @myoroCountryEnumSouthSudanLabel.
  ///
  /// In en, this message translates to:
  /// **'South Sudan'**
  String get myoroCountryEnumSouthSudanLabel;

  /// No description provided for @myoroCountryEnumSpainLabel.
  ///
  /// In en, this message translates to:
  /// **'Spain'**
  String get myoroCountryEnumSpainLabel;

  /// No description provided for @myoroCountryEnumSriLankaLabel.
  ///
  /// In en, this message translates to:
  /// **'Sri Lanka'**
  String get myoroCountryEnumSriLankaLabel;

  /// No description provided for @myoroCountryEnumSudanLabel.
  ///
  /// In en, this message translates to:
  /// **'Sudan'**
  String get myoroCountryEnumSudanLabel;

  /// No description provided for @myoroCountryEnumSurinameLabel.
  ///
  /// In en, this message translates to:
  /// **'Suriname'**
  String get myoroCountryEnumSurinameLabel;

  /// No description provided for @myoroCountryEnumSwedenLabel.
  ///
  /// In en, this message translates to:
  /// **'Sweden'**
  String get myoroCountryEnumSwedenLabel;

  /// No description provided for @myoroCountryEnumSwitzerlandLabel.
  ///
  /// In en, this message translates to:
  /// **'Switzerland'**
  String get myoroCountryEnumSwitzerlandLabel;

  /// No description provided for @myoroCountryEnumSyriaLabel.
  ///
  /// In en, this message translates to:
  /// **'Syria'**
  String get myoroCountryEnumSyriaLabel;

  /// No description provided for @myoroCountryEnumTaiwanLabel.
  ///
  /// In en, this message translates to:
  /// **'Taiwan'**
  String get myoroCountryEnumTaiwanLabel;

  /// No description provided for @myoroCountryEnumTajikistanLabel.
  ///
  /// In en, this message translates to:
  /// **'Tajikistan'**
  String get myoroCountryEnumTajikistanLabel;

  /// No description provided for @myoroCountryEnumTanzaniaLabel.
  ///
  /// In en, this message translates to:
  /// **'Tanzania'**
  String get myoroCountryEnumTanzaniaLabel;

  /// No description provided for @myoroCountryEnumThailandLabel.
  ///
  /// In en, this message translates to:
  /// **'Thailand'**
  String get myoroCountryEnumThailandLabel;

  /// No description provided for @myoroCountryEnumTimorLesteLabel.
  ///
  /// In en, this message translates to:
  /// **'Timor-Leste'**
  String get myoroCountryEnumTimorLesteLabel;

  /// No description provided for @myoroCountryEnumTogoLabel.
  ///
  /// In en, this message translates to:
  /// **'Togo'**
  String get myoroCountryEnumTogoLabel;

  /// No description provided for @myoroCountryEnumTongaLabel.
  ///
  /// In en, this message translates to:
  /// **'Tonga'**
  String get myoroCountryEnumTongaLabel;

  /// No description provided for @myoroCountryEnumTrinidadAndTobagoLabel.
  ///
  /// In en, this message translates to:
  /// **'Trinidad and Tobago'**
  String get myoroCountryEnumTrinidadAndTobagoLabel;

  /// No description provided for @myoroCountryEnumTunisiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Tunisia'**
  String get myoroCountryEnumTunisiaLabel;

  /// No description provided for @myoroCountryEnumTurkeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Turkey'**
  String get myoroCountryEnumTurkeyLabel;

  /// No description provided for @myoroCountryEnumTurkmenistanLabel.
  ///
  /// In en, this message translates to:
  /// **'Turkmenistan'**
  String get myoroCountryEnumTurkmenistanLabel;

  /// No description provided for @myoroCountryEnumTuvaluLabel.
  ///
  /// In en, this message translates to:
  /// **'Tuvalu'**
  String get myoroCountryEnumTuvaluLabel;

  /// No description provided for @myoroCountryEnumUgandaLabel.
  ///
  /// In en, this message translates to:
  /// **'Uganda'**
  String get myoroCountryEnumUgandaLabel;

  /// No description provided for @myoroCountryEnumUkraineLabel.
  ///
  /// In en, this message translates to:
  /// **'Ukraine'**
  String get myoroCountryEnumUkraineLabel;

  /// No description provided for @myoroCountryEnumUnitedArabEmiratesLabel.
  ///
  /// In en, this message translates to:
  /// **'United Arab Emirates'**
  String get myoroCountryEnumUnitedArabEmiratesLabel;

  /// No description provided for @myoroCountryEnumUnitedKingdomLabel.
  ///
  /// In en, this message translates to:
  /// **'United Kingdom'**
  String get myoroCountryEnumUnitedKingdomLabel;

  /// No description provided for @myoroCountryEnumUnitedStatesLabel.
  ///
  /// In en, this message translates to:
  /// **'United States'**
  String get myoroCountryEnumUnitedStatesLabel;

  /// No description provided for @myoroCountryEnumUruguayLabel.
  ///
  /// In en, this message translates to:
  /// **'Uruguay'**
  String get myoroCountryEnumUruguayLabel;

  /// No description provided for @myoroCountryEnumUzbekistanLabel.
  ///
  /// In en, this message translates to:
  /// **'Uzbekistan'**
  String get myoroCountryEnumUzbekistanLabel;

  /// No description provided for @myoroCountryEnumVanuatuLabel.
  ///
  /// In en, this message translates to:
  /// **'Vanuatu'**
  String get myoroCountryEnumVanuatuLabel;

  /// No description provided for @myoroCountryEnumVaticanCityLabel.
  ///
  /// In en, this message translates to:
  /// **'Vatican City'**
  String get myoroCountryEnumVaticanCityLabel;

  /// No description provided for @myoroCountryEnumVenezuelaLabel.
  ///
  /// In en, this message translates to:
  /// **'Venezuela'**
  String get myoroCountryEnumVenezuelaLabel;

  /// No description provided for @myoroCountryEnumVietnamLabel.
  ///
  /// In en, this message translates to:
  /// **'Vietnam'**
  String get myoroCountryEnumVietnamLabel;

  /// No description provided for @myoroCountryEnumYemenLabel.
  ///
  /// In en, this message translates to:
  /// **'Yemen'**
  String get myoroCountryEnumYemenLabel;

  /// No description provided for @myoroCountryEnumZambiaLabel.
  ///
  /// In en, this message translates to:
  /// **'Zambia'**
  String get myoroCountryEnumZambiaLabel;

  /// No description provided for @myoroCountryEnumZimbabweLabel.
  ///
  /// In en, this message translates to:
  /// **'Zimbabwe'**
  String get myoroCountryEnumZimbabweLabel;

  /// No description provided for @myoroDayEnumMondayLabel.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get myoroDayEnumMondayLabel;

  /// No description provided for @myoroDayEnumTuesdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get myoroDayEnumTuesdayLabel;

  /// No description provided for @myoroDayEnumWednesdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get myoroDayEnumWednesdayLabel;

  /// No description provided for @myoroDayEnumThursdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get myoroDayEnumThursdayLabel;

  /// No description provided for @myoroDayEnumFridayLabel.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get myoroDayEnumFridayLabel;

  /// No description provided for @myoroDayEnumSaturdayLabel.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get myoroDayEnumSaturdayLabel;

  /// No description provided for @myoroDayEnumSundayLabel.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get myoroDayEnumSundayLabel;

  /// No description provided for @myoroDayEnumMondayFirstLetter.
  ///
  /// In en, this message translates to:
  /// **'M'**
  String get myoroDayEnumMondayFirstLetter;

  /// No description provided for @myoroDayEnumTuesdayFirstLetter.
  ///
  /// In en, this message translates to:
  /// **'T'**
  String get myoroDayEnumTuesdayFirstLetter;

  /// No description provided for @myoroDayEnumWednesdayFirstLetter.
  ///
  /// In en, this message translates to:
  /// **'W'**
  String get myoroDayEnumWednesdayFirstLetter;

  /// No description provided for @myoroDayEnumThursdayFirstLetter.
  ///
  /// In en, this message translates to:
  /// **'T'**
  String get myoroDayEnumThursdayFirstLetter;

  /// No description provided for @myoroDayEnumFridayFirstLetter.
  ///
  /// In en, this message translates to:
  /// **'F'**
  String get myoroDayEnumFridayFirstLetter;

  /// No description provided for @myoroDayEnumSaturdayFirstLetter.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get myoroDayEnumSaturdayFirstLetter;

  /// No description provided for @myoroDayEnumSundayFirstLetter.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get myoroDayEnumSundayFirstLetter;

  /// No description provided for @myoroMonthEnumJanuaryLabel.
  ///
  /// In en, this message translates to:
  /// **'January'**
  String get myoroMonthEnumJanuaryLabel;

  /// No description provided for @myoroMonthEnumFebruaryLabel.
  ///
  /// In en, this message translates to:
  /// **'February'**
  String get myoroMonthEnumFebruaryLabel;

  /// No description provided for @myoroMonthEnumMarchLabel.
  ///
  /// In en, this message translates to:
  /// **'March'**
  String get myoroMonthEnumMarchLabel;

  /// No description provided for @myoroMonthEnumAprilLabel.
  ///
  /// In en, this message translates to:
  /// **'April'**
  String get myoroMonthEnumAprilLabel;

  /// No description provided for @myoroMonthEnumMayLabel.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get myoroMonthEnumMayLabel;

  /// No description provided for @myoroMonthEnumJuneLabel.
  ///
  /// In en, this message translates to:
  /// **'June'**
  String get myoroMonthEnumJuneLabel;

  /// No description provided for @myoroMonthEnumJulyLabel.
  ///
  /// In en, this message translates to:
  /// **'July'**
  String get myoroMonthEnumJulyLabel;

  /// No description provided for @myoroMonthEnumAugustLabel.
  ///
  /// In en, this message translates to:
  /// **'August'**
  String get myoroMonthEnumAugustLabel;

  /// No description provided for @myoroMonthEnumSeptemberLabel.
  ///
  /// In en, this message translates to:
  /// **'September'**
  String get myoroMonthEnumSeptemberLabel;

  /// No description provided for @myoroMonthEnumOctoberLabel.
  ///
  /// In en, this message translates to:
  /// **'October'**
  String get myoroMonthEnumOctoberLabel;

  /// No description provided for @myoroMonthEnumNovemberLabel.
  ///
  /// In en, this message translates to:
  /// **'November'**
  String get myoroMonthEnumNovemberLabel;

  /// No description provided for @myoroMonthEnumDecemberLabel.
  ///
  /// In en, this message translates to:
  /// **'December'**
  String get myoroMonthEnumDecemberLabel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pl',
    'pt',
    'ru',
    'th',
    'tr',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
