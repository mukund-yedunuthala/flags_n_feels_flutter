import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


Widget customFooter(BuildContext context) {
  List<Widget> rowChildren = [
    TextButton(
      onPressed: () => context.go("/imprint"), 
      child: Text(AppLocalizations.of(context)!.footerImprint)
    ),
    TextButton(
      onPressed: () => context.go("/privacy-policy"), 
      child: Text(AppLocalizations.of(context)!.footerPrivacyPolicy)
    ),
    TextButton(
      onPressed: _launchLicense, 
      child: Text(AppLocalizations.of(context)!.footerLicense)
    ),
  ];
  return Container(
    padding: const EdgeInsets.all(12),
    height: 100.0,
    color: Colors.grey[200],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: rowChildren,
        ),
        Text(AppLocalizations.of(context)!.footerCopyright)
      ],
    )
  );
}

_launchLicense() async {
  final Uri sourceUri = Uri.parse("https://git.mukund-yedunuthala.de/mukund-yedunuthala/guess_the_event_emoji_edition/src/branch/main/LICENSE");
  if (!await launchUrl(sourceUri)) {
    throw Exception('Could not launch $sourceUri');
  }
}