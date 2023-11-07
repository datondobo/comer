import 'package:flutter/material.dart';
import 'package:la_comer/l10n/l10n.dart';

extension AppLocalizationsExtension on BuildContext {
  AppLocalizations get l10n {
    return AppLocalizations.of(this);
  }
}

extension MediaQueryExtension on BuildContext {
  Size get deviceSize {
    return MediaQuery.of(this).size;
  }
}
