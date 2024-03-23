import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Widget homeLeadTitleText(BuildContext context) {
//   return Container(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: Text(
//       AppLocalizations.of(context)!.appName,
//       style: const TextStyle(
//         fontSize: 50,
//         fontWeight: FontWeight.w600 
//       ),
//     )
//   );
// }

Text homeBodyTextLarge(BuildContext context) {
  return Text(
      AppLocalizations.of(context)!.homePageText,
      style: Theme.of(context).textTheme.displaySmall,
  );
}

Widget homeBodyTextMobile(BuildContext context) {
  return SizedBox(
    width: 300,
    height: 100,
    child: Text(
      AppLocalizations.of(context)!.homePageText,
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
    ),
  );
}