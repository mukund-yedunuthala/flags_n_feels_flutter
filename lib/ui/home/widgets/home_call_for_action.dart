import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

FilledButton homeCallForAction(BuildContext context) {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        minimumSize: const Size(400, 100),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  return FilledButton(
    style: raisedButtonStyle,
    onPressed: () => context.go("/play"),
    child: Text(
      AppLocalizations.of(context)!.homeCallForAction, 
      style: const TextStyle(fontSize: 30),
    ),
  );
}