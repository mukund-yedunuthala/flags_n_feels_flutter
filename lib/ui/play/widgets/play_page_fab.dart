import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget playPageFAB(BuildContext context, Function onPressed) {
  return FloatingActionButton.large(
    onPressed: () {
      onPressed();
    },
    tooltip: AppLocalizations.of(context)!.playPageFABHint,
    child: const Icon(Icons.refresh),
  );
}