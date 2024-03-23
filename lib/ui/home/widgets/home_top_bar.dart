import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


PreferredSizeWidget homeTopBar(String title, BuildContext context) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600 
      ),  
    ),
    actions: [
      const SizedBox(width: 20),
      TextButton(
        onPressed: _launchSource, 
        child: Text(
          AppLocalizations.of(context)!.homeTopBarSource,
          style: const TextStyle(fontSize: 15)
        )
        ),
      const SizedBox(width: 20),
      TextButton(
        onPressed: () => context.go("/about"), 
        child: Text(
          AppLocalizations.of(context)!.homeTopBarAbout,
          style: const TextStyle(fontSize: 15)
        )
      ),
      const SizedBox(width: 40)
    ],
    centerTitle: true,
    toolbarHeight: 100,
  );
}

_launchSource() async {
  final Uri sourceUri = Uri.parse("https://git.mukund-yedunuthala.de/mukund-yedunuthala/guess_the_event_emoji_edition");
  if (!await launchUrl(sourceUri)) {
    throw Exception('Could not launch $sourceUri');
  }
}