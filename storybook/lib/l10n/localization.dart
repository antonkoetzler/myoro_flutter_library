import 'package:storybook/core/key/navigator_key.dart';
import 'package:storybook/l10n/gen/app_localizations.dart';

/// Global [AppLocalizations] getter.
AppLocalizations get localization {
  return AppLocalizations.of(navigatorKey.currentContext!)!;
}
