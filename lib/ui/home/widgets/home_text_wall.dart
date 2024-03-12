import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget homeLeadTitleText(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      AppLocalizations.of(context)!.appName,
      style: const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w600 
      ),
    )
  );
}

Text homeBodyText(BuildContext context) {
  return Text(
      AppLocalizations.of(context)!.homePageText,
      style: Theme.of(context).textTheme.displaySmall,
  );
}