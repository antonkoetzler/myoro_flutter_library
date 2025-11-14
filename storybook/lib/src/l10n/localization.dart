import 'package:storybook/core/key/navigator_key.dart';
import 'package:storybook/src/l10n/gen/app_localizations.dart';

/// Global [AppLocalizations] getter.
AppLocalizations get localization => AppLocalizations.of(navigatorKey.currentContext!)!;
