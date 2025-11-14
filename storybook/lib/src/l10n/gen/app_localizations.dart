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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
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

  /// No description provided for @storybookMainScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'MFL Storybook'**
  String get storybookMainScreenTitle;

  /// No description provided for @storybookWidgetListingAccordionSearchBarPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'i.e. MyoroDropdown'**
  String get storybookWidgetListingAccordionSearchBarPlaceholder;

  /// No description provided for @storybookWidgetListEnumAccordionsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Accordions'**
  String get storybookWidgetListEnumAccordionsCategoryName;

  /// No description provided for @storybookWidgetListEnumAppBarsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'App bars'**
  String get storybookWidgetListEnumAppBarsCategoryName;

  /// No description provided for @storybookWidgetListEnumAppsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Apps'**
  String get storybookWidgetListEnumAppsCategoryName;

  /// No description provided for @storybookWidgetListEnumButtonsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Buttons'**
  String get storybookWidgetListEnumButtonsCategoryName;

  /// No description provided for @storybookWidgetListEnumCardsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get storybookWidgetListEnumCardsCategoryName;

  /// No description provided for @storybookWidgetListEnumCarouselsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Carousels'**
  String get storybookWidgetListEnumCarouselsCategoryName;

  /// No description provided for @storybookWidgetListEnumCheckboxesCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Checkboxes'**
  String get storybookWidgetListEnumCheckboxesCategoryName;

  /// No description provided for @storybookWidgetListEnumDividersCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Dividers'**
  String get storybookWidgetListEnumDividersCategoryName;

  /// No description provided for @storybookWidgetListEnumDrawersCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Drawers'**
  String get storybookWidgetListEnumDrawersCategoryName;

  /// No description provided for @storybookWidgetListEnumDropdownsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Dropdowns'**
  String get storybookWidgetListEnumDropdownsCategoryName;

  /// No description provided for @storybookWidgetListEnumFeedbacksCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Feedbacks'**
  String get storybookWidgetListEnumFeedbacksCategoryName;

  /// No description provided for @storybookWidgetListEnumFieldsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Fields'**
  String get storybookWidgetListEnumFieldsCategoryName;

  /// No description provided for @storybookWidgetListEnumFormsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Forms'**
  String get storybookWidgetListEnumFormsCategoryName;

  /// No description provided for @storybookWidgetListEnumGraphsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Graphs'**
  String get storybookWidgetListEnumGraphsCategoryName;

  /// No description provided for @storybookWidgetListEnumImagesCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get storybookWidgetListEnumImagesCategoryName;

  /// No description provided for @storybookWidgetListEnumIndexedStacksCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Indexed Stacks'**
  String get storybookWidgetListEnumIndexedStacksCategoryName;

  /// No description provided for @storybookWidgetListEnumInputsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Inputs'**
  String get storybookWidgetListEnumInputsCategoryName;

  /// No description provided for @storybookWidgetListEnumLayoutBuildersCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Layout Builders'**
  String get storybookWidgetListEnumLayoutBuildersCategoryName;

  /// No description provided for @storybookWidgetListEnumLoadersCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Loaders'**
  String get storybookWidgetListEnumLoadersCategoryName;

  /// No description provided for @storybookWidgetListEnumMenusCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Menus'**
  String get storybookWidgetListEnumMenusCategoryName;

  /// No description provided for @storybookWidgetListEnumModalsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Modals'**
  String get storybookWidgetListEnumModalsCategoryName;

  /// No description provided for @storybookWidgetListEnumPickersCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Pickers'**
  String get storybookWidgetListEnumPickersCategoryName;

  /// No description provided for @storybookWidgetListEnumRadiosCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Radios'**
  String get storybookWidgetListEnumRadiosCategoryName;

  /// No description provided for @storybookWidgetListEnumScreensCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Screens'**
  String get storybookWidgetListEnumScreensCategoryName;

  /// No description provided for @storybookWidgetListEnumScrollablesCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Scrollables'**
  String get storybookWidgetListEnumScrollablesCategoryName;

  /// No description provided for @storybookWidgetListEnumSlidersCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Sliders'**
  String get storybookWidgetListEnumSlidersCategoryName;

  /// No description provided for @storybookWidgetListEnumSnackBarsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Snack Bars'**
  String get storybookWidgetListEnumSnackBarsCategoryName;

  /// No description provided for @storybookWidgetListEnumTabViewCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Tab views'**
  String get storybookWidgetListEnumTabViewCategoryName;

  /// No description provided for @storybookWidgetListEnumTablesCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Tables'**
  String get storybookWidgetListEnumTablesCategoryName;

  /// No description provided for @storybookWidgetListEnumTooltipsCategoryName.
  ///
  /// In en, this message translates to:
  /// **'Tooltips'**
  String get storybookWidgetListEnumTooltipsCategoryName;

  /// No description provided for @storybookWidgetShowcaseOptionSelectionTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Selection type'**
  String get storybookWidgetShowcaseOptionSelectionTypeLabel;

  /// No description provided for @storybookWidgetShowcaseOptionBackgroundColorLabel.
  ///
  /// In en, this message translates to:
  /// **'Background color'**
  String get storybookWidgetShowcaseOptionBackgroundColorLabel;

  /// No description provided for @storybookWidgetShowcaseOptionCloseButtonIconLabel.
  ///
  /// In en, this message translates to:
  /// **'Close button icon'**
  String get storybookWidgetShowcaseOptionCloseButtonIconLabel;

  /// No description provided for @storybookWidgetShowcaseOptionCloseButtonContentPaddingLabel.
  ///
  /// In en, this message translates to:
  /// **'Close button content padding'**
  String get storybookWidgetShowcaseOptionCloseButtonContentPaddingLabel;

  /// No description provided for @storybookWidgetShowcaseOptionPreviousItemButtonIconLabel.
  ///
  /// In en, this message translates to:
  /// **'Previous item button icon'**
  String get storybookWidgetShowcaseOptionPreviousItemButtonIconLabel;

  /// No description provided for @storybookWidgetShowcaseOptionNextItemButtonIconLabel.
  ///
  /// In en, this message translates to:
  /// **'Next item button icon'**
  String get storybookWidgetShowcaseOptionNextItemButtonIconLabel;

  /// No description provided for @storybookWidgetShowcaseOptionNoneBorderLabel.
  ///
  /// In en, this message translates to:
  /// **'None border'**
  String get storybookWidgetShowcaseOptionNoneBorderLabel;

  /// No description provided for @storybookWidgetShowcaseOptionErrorBorderColorLabel.
  ///
  /// In en, this message translates to:
  /// **'Error border color'**
  String get storybookWidgetShowcaseOptionErrorBorderColorLabel;

  /// No description provided for @storybookWidgetShowcaseOptionLabelBehaviorLabel.
  ///
  /// In en, this message translates to:
  /// **'Label behavior'**
  String get storybookWidgetShowcaseOptionLabelBehaviorLabel;

  /// No description provided for @storybookWidgetShowcaseOptionIndicatorTextAlignmentLabel.
  ///
  /// In en, this message translates to:
  /// **'Indicator text alignment'**
  String get storybookWidgetShowcaseOptionIndicatorTextAlignmentLabel;

  /// No description provided for @storybookWidgetShowcaseOptionSingleDropdownTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Single dropdown type'**
  String get storybookWidgetShowcaseOptionSingleDropdownTypeLabel;

  /// No description provided for @storybookWidgetShowcaseOptionMultiDropdownTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Multi dropdown type'**
  String get storybookWidgetShowcaseOptionMultiDropdownTypeLabel;

  /// No description provided for @storybookWidgetShowcaseOptionCancelButtonTextLabel.
  ///
  /// In en, this message translates to:
  /// **'Cancel button text.'**
  String get storybookWidgetShowcaseOptionCancelButtonTextLabel;

  /// No description provided for @storybookWidgetShowcaseOptionConfirmButtonTextLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm button text'**
  String get storybookWidgetShowcaseOptionConfirmButtonTextLabel;

  /// No description provided for @storybookWidgetShowcaseOptionBarrierDismissableLabel.
  ///
  /// In en, this message translates to:
  /// **'Close modal when backdrop is tapped?'**
  String get storybookWidgetShowcaseOptionBarrierDismissableLabel;

  /// No description provided for @storybookWidgetShowcaseOptionIconLabel.
  ///
  /// In en, this message translates to:
  /// **'Icon'**
  String get storybookWidgetShowcaseOptionIconLabel;

  /// No description provided for @storybookWidgetShowcaseOptionMouseCursorBasicLabel.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get storybookWidgetShowcaseOptionMouseCursorBasicLabel;

  /// No description provided for @storybookWidgetShowcaseOptionMouseCursorClickLabel.
  ///
  /// In en, this message translates to:
  /// **'Click'**
  String get storybookWidgetShowcaseOptionMouseCursorClickLabel;

  /// No description provided for @storybookWidgetShowcaseOptionMouseCursorHelpLabel.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get storybookWidgetShowcaseOptionMouseCursorHelpLabel;

  /// No description provided for @storybookWidgetShowcaseOptionMouseCursorZoomInLabel.
  ///
  /// In en, this message translates to:
  /// **'Zoom In'**
  String get storybookWidgetShowcaseOptionMouseCursorZoomInLabel;

  /// No description provided for @storybookWidgetShowcaseOptionMouseCursorZoomOutLabel.
  ///
  /// In en, this message translates to:
  /// **'Zoom Out'**
  String get storybookWidgetShowcaseOptionMouseCursorZoomOutLabel;

  /// No description provided for @storybookWidgetShowcaseOptionInputBorderNoneLabel.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get storybookWidgetShowcaseOptionInputBorderNoneLabel;

  /// No description provided for @storybookWidgetShowcaseOptionInputBorderCustomLabel.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get storybookWidgetShowcaseOptionInputBorderCustomLabel;

  /// No description provided for @storybookWidgetShowcaseOptionIconUnknownIconLabel.
  ///
  /// In en, this message translates to:
  /// **'Unknown Icon'**
  String get storybookWidgetShowcaseOptionIconUnknownIconLabel;

  /// No description provided for @storybookIndexedStackPreviousIndexButtonText.
  ///
  /// In en, this message translates to:
  /// **'Previous index'**
  String get storybookIndexedStackPreviousIndexButtonText;

  /// No description provided for @storybookIndexedStackNextIndexButtonText.
  ///
  /// In en, this message translates to:
  /// **'Next index'**
  String get storybookIndexedStackNextIndexButtonText;

  /// No description provided for @storybookMenuSelectedItemsLabel.
  ///
  /// In en, this message translates to:
  /// **'Selected Items:'**
  String get storybookMenuSelectedItemsLabel;

  /// No description provided for @storybookMenuSelectItem1ButtonText.
  ///
  /// In en, this message translates to:
  /// **'Select Item 1'**
  String get storybookMenuSelectItem1ButtonText;

  /// No description provided for @storybookMenuSelectMultipleButtonText.
  ///
  /// In en, this message translates to:
  /// **'Select Multiple'**
  String get storybookMenuSelectMultipleButtonText;

  /// No description provided for @storybookMenuClearSelectionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Clear Selection'**
  String get storybookMenuClearSelectionButtonText;

  /// No description provided for @storybookMenuSelectedLabel.
  ///
  /// In en, this message translates to:
  /// **'Selected:'**
  String get storybookMenuSelectedLabel;

  /// No description provided for @storybookMenuSearchCallbackLabel.
  ///
  /// In en, this message translates to:
  /// **'Search Callback:'**
  String get storybookMenuSearchCallbackLabel;

  /// No description provided for @storybookMenuEnableSearchCallbackCheckboxLabel.
  ///
  /// In en, this message translates to:
  /// **'Enable Search Callback'**
  String get storybookMenuEnableSearchCallbackCheckboxLabel;

  /// No description provided for @storybookMenuSearchCallbackEnabledMessage.
  ///
  /// In en, this message translates to:
  /// **'Search callback is enabled - check console for search queries'**
  String get storybookMenuSearchCallbackEnabledMessage;

  /// No description provided for @storybookDropdownSearchCallbackLabel.
  ///
  /// In en, this message translates to:
  /// **'Search Callback:'**
  String get storybookDropdownSearchCallbackLabel;

  /// No description provided for @storybookDropdownEnableSearchCallbackCheckboxLabel.
  ///
  /// In en, this message translates to:
  /// **'Enable Search Callback'**
  String get storybookDropdownEnableSearchCallbackCheckboxLabel;

  /// No description provided for @storybookDropdownSearchCallbackEnabledMessage.
  ///
  /// In en, this message translates to:
  /// **'Search callback is enabled - check console for search queries'**
  String get storybookDropdownSearchCallbackEnabledMessage;

  /// No description provided for @storybookDialogModalConfirmButtonTappedMessage.
  ///
  /// In en, this message translates to:
  /// **'Confirm button tapped!'**
  String get storybookDialogModalConfirmButtonTappedMessage;

  /// No description provided for @storybookDialogModalCancelButtonTappedMessage.
  ///
  /// In en, this message translates to:
  /// **'Cancel button tapped!'**
  String get storybookDialogModalCancelButtonTappedMessage;

  /// No description provided for @storybookFilePickerFileSelectedMessage.
  ///
  /// In en, this message translates to:
  /// **'{fileName} selected!'**
  String storybookFilePickerFileSelectedMessage(String fileName);

  /// No description provided for @storybookFilePickerNoFileSelectedMessage.
  ///
  /// In en, this message translates to:
  /// **'No file selected.'**
  String get storybookFilePickerNoFileSelectedMessage;

  /// No description provided for @storybookInputSubmitButtonText.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get storybookInputSubmitButtonText;

  /// No description provided for @storybookFormSubmitButtonText.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get storybookFormSubmitButtonText;

  /// No description provided for @storybookFieldLabelLabel.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get storybookFieldLabelLabel;

  /// No description provided for @storybookFieldDataLabel.
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get storybookFieldDataLabel;

  /// No description provided for @storybookFeedbackActionButtonText.
  ///
  /// In en, this message translates to:
  /// **'Action button'**
  String get storybookFeedbackActionButtonText;

  /// No description provided for @storybookSearchInputStartItemText.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get storybookSearchInputStartItemText;

  /// No description provided for @storybookSearchInputEndItemText.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get storybookSearchInputEndItemText;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
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
