import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Text aboutBodyText(BuildContext context) {
  return Text(
      AppLocalizations.of(context)!.aboutPageText,
      style: Theme.of(context).textTheme.titleLarge,
  );
}